#!/usr/bin/env bash
set -eu
set -o pipefail 2>/dev/null || true

build_debug=false
build_release_zip=true
while [[ $# -gt 0 ]]; do
	case "$1" in
		--debug|-d)
			build_debug=true
			;;
		--no-debug|--release|-r)
			build_debug=false
			;;
		--no-zip)
			build_release_zip=false
			;;
		-h|--help)
			cat <<'EOF'
Usage: release.sh [--debug|--no-debug] [--no-zip]

--debug      Build the story file with Inform 6 debug enabled.
--no-debug   Build without Inform 6 debug enabled.
--no-zip     Build the disk images but skip packaging the release ZIP.
EOF
			exit 0
			;;
		*)
			echo "Unknown argument: $1" >&2
			exit 1
			;;
	esac
	shift
done

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
build_dir="$script_dir/Build"
release_package_dir="$build_dir/.release-package"
inform6="$script_dir/../../tools/inform6.exe"
cache_dir="$build_dir/.cache"
shim_bin_dir="$cache_dir/bin"
py_pkgs_dir="$cache_dir/py-pkgs"
netpbm_cache_dir="$cache_dir/netpbm"
netpbm_extract_dir="$netpbm_cache_dir/extracted"
cpmtools_cache_dir="$cache_dir/cpmtools"
cpmtools_extract_dir="$cpmtools_cache_dir/extracted"
mtools_cache_dir="$cache_dir/mtools"
mtools_extract_dir="$mtools_cache_dir/extracted"
libdsk_cache_dir="$cache_dir/libdsk4"
libdsk_extract_dir="$libdsk_cache_dir/extracted"
libdsk_lib_dir="$libdsk_extract_dir/usr/lib/x86_64-linux-gnu"

mkdir -p "$build_dir" "$shim_bin_dir" \
	"$cpmtools_cache_dir" "$mtools_cache_dir" \
	"$libdsk_cache_dir" "$netpbm_cache_dir" "$py_pkgs_dir"

# --- Puny-BuildTools setup -------------------------------------------------
fiction_tools="/mnt/c/Source/Puny-BuildTools"

# Write .pi6rc with the PunyInform library path.
echo 'lib=/mnt/c/Source/PunyInform/lib/' > "$fiction_tools/.pi6rc"

# Fix CRLF line endings in Puny-BuildTools scripts for WSL compatibility.
find "$fiction_tools" -maxdepth 1 -type f \( -name '*.sh' -o -name '*.py' -o -name 'puny' \
	-o -name 'pi6' -o -name '.puny*' -o -name 'zip2st' -o -name 'kenobi' -o -name 'z3*' \) \
	-exec sed -i 's/\r$//' {} +
find "$fiction_tools/Templates" -name '*.sh' -exec sed -i 's/\r$//' {} +

# Source the Puny BuildTools rc files (sets PATH, hfsutils, z88dk, ZCCCFG).
for rc in "$fiction_tools/.punyrc" "$fiction_tools/.punywsl"; do
	if [[ -f "$rc" ]]; then
		set +u
		# shellcheck disable=SC1090
		source "$rc" >/dev/null 2>&1 || true
		set -u
	fi
done

# --- Shims for python / which (WSL may lack them) ----------------------------
if ! command -v python >/dev/null 2>&1 && command -v python3 >/dev/null 2>&1; then
	ln -sf "$(command -v python3)" "$shim_bin_dir/python"
fi

if ! command -v which >/dev/null 2>&1; then
	cat > "$shim_bin_dir/which" <<'EOF'
#!/usr/bin/env bash
for command_name in "$@"; do
	command -v "$command_name" || exit 1
done
EOF
	chmod +x "$shim_bin_dir/which"
fi

# --- Helper: extract a .deb package into a cache directory --------------------
ensure_deb() {
	local cache_dir="$1" extract_dir="$2"; shift 2
	if [[ ! -d "$extract_dir" ]]; then
		(cd "$cache_dir"
		 for pkg in "$@"; do ls ${pkg}_*.deb >/dev/null 2>&1 || apt-get download "$pkg" >/dev/null; done
		 mkdir -p extracted
		 for deb in *.deb; do dpkg-deb -x "$deb" extracted; done)
	fi
}

# --- Bootstrap mtools --------------------------------------------------------
if ! command -v mformat >/dev/null 2>&1 || ! command -v mcopy >/dev/null 2>&1; then
	ensure_deb "$mtools_cache_dir" "$mtools_extract_dir" mtools
	export PATH="$mtools_extract_dir/usr/bin:$PATH"
fi

# --- Bootstrap cpmtools ------------------------------------------------------
if ! command -v cpmcp >/dev/null 2>&1 || ! command -v cpmls >/dev/null 2>&1; then
	ensure_deb "$cpmtools_cache_dir" "$cpmtools_extract_dir" cpmtools
	export PATH="$cpmtools_extract_dir/usr/bin:$PATH"
	export CPMTOOLS_DSKDEFS="$cpmtools_extract_dir/etc/cpmtools/diskdefs"
fi

# --- Bootstrap libdsk4 -------------------------------------------------------
if [[ ! -e "$libdsk_lib_dir/libdsk.so.4" ]]; then
	ensure_deb "$libdsk_cache_dir" "$libdsk_extract_dir" libdsk4
fi
export LD_LIBRARY_PATH="$libdsk_lib_dir${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"

export PATH="$shim_bin_dir:$PATH"

# --- Bootstrap netpbm (ppmtopi1, ppmtoilbm) ----------------------------------
if ! command -v ppmtopi1 >/dev/null 2>&1 || ! command -v ppmtoilbm >/dev/null 2>&1; then
	ensure_deb "$netpbm_cache_dir" "$netpbm_extract_dir" netpbm libnetpbm11t64
	export PATH="$netpbm_extract_dir/usr/bin:$PATH"
	export LD_LIBRARY_PATH="$netpbm_extract_dir/usr/lib/x86_64-linux-gnu${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
fi

# --- Bootstrap Pillow (Python image library for cover art conversion) ---------
if ! PYTHONPATH="$py_pkgs_dir${PYTHONPATH:+:$PYTHONPATH}" python3 -c 'import PIL' 2>/dev/null; then
	python3 -m pip install --quiet pillow --target "$py_pkgs_dir"
fi
export PYTHONPATH="$py_pkgs_dir${PYTHONPATH:+:$PYTHONPATH}"

cp -f "$cpmtools_extract_dir/etc/cpmtools/diskdefs" "$build_dir/diskdefs"
if ! grep -q '^diskdef prodos$' "$build_dir/diskdefs"; then
	cat >> "$build_dir/diskdefs" <<'EOF'

diskdef prodos
	seclen 512
	tracks 160
	sectrk 9
	maxdir 256
	blocksize 2048
	boottrk 1
	maxdir 128
	skew 2
	boottrk 2
	os 2.2
end
EOF
fi

STORY="dust"
ZVERSION="5"
RELEASE="R1"
SUBTITLE="https://ikeserver.de/Dust"
LABEL="IkeC"

# --- system settings (don't touch unless you know what you do): ---------

CFGEDITOR="vi"
WRAPPER="pi6"
TESTTERP="frotz"
cp -f dust.inf "$build_dir/dust.inf"
cp -f "$build_dir/config.sh" "$build_dir/config.sh.orig"
tr -d '\r' < "$build_dir/config.sh.orig" > "$build_dir/config.sh"
trap "mv -f '$build_dir/config.sh.orig' '$build_dir/config.sh'; rm -f '$build_dir/dust.inf' '$build_dir/dust_t.inf' '$build_dir/dust_t.z5' '$build_dir/gametext.txt' '$build_dir/diskdefs'; rm -rf '$build_dir/Build' '$build_dir/Resources' '$release_package_dir'" EXIT

# --- Populate Build/Resources/ with loading-screen artwork --------------------
cover_src="$(dirname "$script_dir")/Inform7/Dust.materials/Cover-11-Dust.png"
resources_src="$script_dir/Resources"   # committed/generated source files
resources_dst="$build_dir/Resources"    # consumed by puny template scripts
mkdir -p "$resources_src" "$resources_dst"

if [[ -f "$cover_src" ]]; then
	_pil='import sys; from PIL import Image'
	_resample='Image.Resampling.LANCZOS if hasattr(Image, "Resampling") else Image.LANCZOS'

	# C64: loadpic.kla (Koala multicolor image derived from the cover)
	if python3 - "$cover_src" "$resources_src/loadpic.kla" <<'PY'
from collections import Counter
from PIL import Image
import sys

PALETTE = [
	(0, 0, 0),
	(255, 255, 255),
	(136, 0, 0),
	(170, 255, 238),
	(204, 68, 204),
	(0, 204, 85),
	(0, 0, 170),
	(238, 238, 119),
	(221, 136, 85),
	(102, 68, 0),
	(255, 119, 119),
	(51, 51, 51),
	(119, 119, 119),
	(170, 255, 102),
	(0, 136, 255),
	(187, 187, 187),
]

def dist2(a, b):
	return sum((a[i] - b[i]) * (a[i] - b[i]) for i in range(3))

def nearest(rgb, exclude=()):
	choices = [index for index in range(len(PALETTE)) if index not in exclude]
	return min(choices, key=lambda index: dist2(rgb, PALETTE[index]))

src, dst = sys.argv[1], sys.argv[2]
image = Image.open(src).convert('RGB').resize((320, 200), Image.LANCZOS)
pixels = [[nearest(image.getpixel((x, y))) for x in range(320)] for y in range(200)]
overall = Counter(color for row in pixels for color in row)
ordered = [color for color, _ in overall.most_common()]
background = ordered[0]
multicolor1 = next(color for color in ordered[1:] if color != background)
multicolor2 = next(color for color in ordered[1:] if color not in {background, multicolor1})
bitmap = bytearray()
screen = bytearray()
colorram = bytearray()

for cell_y in range(25):
	for cell_x in range(40):
		counts = Counter()
		red = green = blue = 0
		for y in range(cell_y * 8, cell_y * 8 + 8):
			for x in range(cell_x * 8, cell_x * 8 + 8):
				color = pixels[y][x]
				counts[color] += 1
				r, g, b = PALETTE[color]
				red += r
				green += g
				blue += b
		local = None
		for color, _ in counts.most_common():
			if color not in {background, multicolor1, multicolor2}:
				local = color
				break
		if local is None:
			average = (red / 64.0, green / 64.0, blue / 64.0)
			local = min(
				[color for color in range(16) if color not in {background, multicolor1, multicolor2}],
				key=lambda color: dist2(average, PALETTE[color]),
			)
		screen.append((multicolor1 << 4) | multicolor2)
		colorram.append(local)
		for y in range(cell_y * 8, cell_y * 8 + 8):
			byte = 0
			row = pixels[y]
			for pair in range(4):
				left = row[cell_x * 8 + pair * 2]
				right = row[cell_x * 8 + pair * 2 + 1]
				choices = [background, multicolor1, multicolor2, local]
				best = min(
					choices,
					key=lambda color: dist2(PALETTE[left], PALETTE[color]) + dist2(PALETTE[right], PALETTE[color]),
				)
				byte |= choices.index(best) << (6 - pair * 2)
			bitmap.append(byte)

with open(dst, 'wb') as fh:
	fh.write(bytes((0x00, 0x60)))
	fh.write(bitmap)
	fh.write(screen)
	fh.write(colorram)
	fh.write(bytes((background,)))
PY
	then
		echo "Generated loadpic.kla (C64 loading screen)"
	else
		echo "Warning: C64 loadpic.kla conversion failed — building without loading screen"
		rm -f "$resources_src/loadpic.kla"
	fi

	# Atari ST: ART.PI1 (320x200, 16 colours written directly as Degas PI1)
	if python3 - "$cover_src" "$resources_src/ART.PI1" <<'PY'
from PIL import Image
import sys

PALETTE = [
	(0, 0, 0),
	(255, 255, 255),
	(136, 0, 0),
	(170, 255, 238),
	(204, 68, 204),
	(0, 204, 85),
	(0, 0, 170),
	(238, 238, 119),
	(221, 136, 85),
	(102, 68, 0),
	(255, 119, 119),
	(51, 51, 51),
	(119, 119, 119),
	(170, 255, 102),
	(0, 136, 255),
	(187, 187, 187),
]

def dist2(a, b):
	return sum((a[i] - b[i]) * (a[i] - b[i]) for i in range(3))

def nearest(rgb):
	return min(range(16), key=lambda index: dist2(rgb, PALETTE[index]))

def st_color(rgb):
	return ((rgb[0] * 7 + 127) // 255) << 8 | ((rgb[1] * 7 + 127) // 255) << 4 | ((rgb[2] * 7 + 127) // 255)

src, dst = sys.argv[1], sys.argv[2]
image = Image.open(src).convert('RGB').resize((320, 200), Image.LANCZOS)
pixels = [[nearest(image.getpixel((x, y))) for x in range(320)] for y in range(200)]

with open(dst, 'wb') as fh:
	fh.write((0).to_bytes(2, 'big'))
	for color in PALETTE:
		fh.write(st_color(color).to_bytes(2, 'big'))
	for y in range(200):
		for plane in range(4):
			for xbyte in range(40):
				byte = 0
				for bit in range(8):
					color = pixels[y][xbyte * 8 + bit]
					if color & (1 << plane):
						byte |= 1 << (7 - bit)
				fh.write(bytes((byte,)))
PY
	then
		echo "Generated ART.PI1 (Atari ST loading screen)"
	else
		echo "Warning: Atari ST ART.PI1 conversion failed — building without loading screen"
		rm -f "$resources_src/ART.PI1"
	fi

	# MEGA65: screen16.iff (320x200, 16 colours via Pillow PPM → ppmtoilbm)
	if python3 -c "$_pil; Image.open(sys.argv[1]).resize((320,200), $_resample).convert('RGB').save(sys.argv[2],'ppm')" \
			"$cover_src" "$resources_src/screen16.ppm" 2>/dev/null \
			&& ppmtoilbm -maxplanes 8 "$resources_src/screen16.ppm" > "$resources_src/screen16.iff" 2>/dev/null; then
		echo "Generated screen16.iff (MEGA65 loading screen)"
	else
		echo "Warning: MEGA65 screen16.iff conversion failed — building without loading screen"
		rm -f "$resources_src/screen16.iff"
	fi
	rm -f "$resources_src/screen16.ppm"

	# MS-DOS: SCREEN.PNG (320x200, 256-colour paletted PNG via Pillow)
	if python3 -c "$_pil; Image.open(sys.argv[1]).resize((320,200), $_resample).quantize(256).save(sys.argv[2],'png')" \
			"$cover_src" "$resources_src/SCREEN.PNG" 2>/dev/null; then
		echo "Generated SCREEN.PNG (MS-DOS loading screen)"
	else
		echo "Warning: MS-DOS SCREEN.PNG conversion failed — building without loading screen"
	fi

	# Amstrad CPC + Agon: SCREEN.SCR / SCREEN.PAL / SCREEN.BAS (via martine)
	if [[ ! -f "$resources_src/SCREEN.SCR" ]] && command -v martine >/dev/null 2>&1; then
		tmpdir=$(mktemp -d)
		cp "$cover_src" "$tmpdir/SCREEN.PNG"
		if (cd "$tmpdir" && martine -in SCREEN.PNG -mode 0 >/dev/null 2>&1); then
			for f in SCREEN.BAS SCREEN.PAL SCREEN.SCR; do
				[[ -f "$tmpdir/$f" ]] && cp "$tmpdir/$f" "$resources_src/$f"
			done
			[[ -f "$resources_src/SCREEN.SCR" ]] \
				&& echo "Generated SCREEN.SCR/PAL/BAS (CPC / Agon loading screen)" \
				|| echo "Warning: CPC SCREEN conversion produced no output — building without loading screen"
		else
			echo "Warning: CPC/Agon SCREEN conversion failed — building without loading screen"
		fi
		rm -rf "$tmpdir"
	fi

	# ZX Spectrum: generate SCRLOAD.COM from the cover when the helper is available.
	if [[ ! -f "$resources_src/SCRLOAD.COM" && -d "$fiction_tools/scrload" ]]; then
		tmpdir=$(mktemp -d)
		cp "$fiction_tools/scrload/Makefile_scrload" "$fiction_tools/scrload/makescr.sh" "$fiction_tools/scrload/scrload.c" "$tmpdir/"
		python3 - "$cover_src" "$tmpdir/screen.bin" <<'PY'
from collections import Counter
from PIL import Image
import sys

PALETTE = [
	(0, 0, 0),
	(0, 0, 205),
	(205, 0, 0),
	(205, 0, 205),
	(0, 205, 0),
	(0, 205, 205),
	(205, 205, 0),
	(205, 205, 205),
]

def dist2(a, b):
	return sum((a[i] - b[i]) * (a[i] - b[i]) for i in range(3))

def nearest(rgb):
	return min(range(8), key=lambda index: dist2(rgb, PALETTE[index]))

def bitmap_offset(x_byte, y):
	return ((y & 0xC0) << 5) | ((y & 0x07) << 8) | ((y & 0x38) << 2) | x_byte

src, dst = sys.argv[1], sys.argv[2]
image = Image.open(src).convert('RGB').resize((256, 192), Image.LANCZOS)
mapped = [[nearest(image.getpixel((x, y))) for x in range(256)] for y in range(192)]
bitmap = bytearray(6144)
attrs = bytearray(768)

for cell_y in range(24):
	for cell_x in range(32):
		counts = Counter()
		for y in range(cell_y * 8, cell_y * 8 + 8):
			for x in range(cell_x * 8, cell_x * 8 + 8):
				counts[mapped[y][x]] += 1
		paper = counts.most_common(1)[0][0]
		ink = next((color for color, _ in counts.most_common() if color != paper), paper)
		attrs[cell_y * 32 + cell_x] = (ink & 7) | ((paper & 7) << 3)
		for row in range(8):
			value = 0
			y = cell_y * 8 + row
			for bit in range(8):
				x = cell_x * 8 + bit
				if mapped[y][x] == ink:
					value |= 1 << (7 - bit)
			bitmap[bitmap_offset(cell_x, y)] = value

with open(dst, 'wb') as handle:
	handle.write(bitmap)
	handle.write(attrs)
PY
		if (cd "$tmpdir" && bash ./makescr.sh >/dev/null 2>&1); then
			cp -f "$tmpdir/SCRLOAD.COM" "$resources_src/SCRLOAD.COM"
			echo "Generated SCRLOAD.COM (ZX Spectrum loading screen)"
		else
			echo "Warning: Spectrum SCRLOAD generation failed — building without loading screen"
		fi
		rm -rf "$tmpdir"
	fi

	# Copy all generated/committed resource files into Build/Resources.
	cp -f "$resources_src/"* "$resources_dst/" 2>/dev/null || true
fi

cd "$build_dir"
mkdir -p Build
echo '' > Build/abbrvs.h
# Strip $OMIT_SYMBOL_TABLE pragma — incompatible with Inform 6.44 + puny.h
sed -i '/^!% \$OMIT_SYMBOL_TABLE/d' dust.inf
if [[ "$build_debug" == false ]]; then
	sed -i '/^Constant DEBUG;$/d' dust.inf
	inform6_flags=(-S -e -c -E1)
else
	inform6_flags=(-SD -e -c -E1)
fi
local_lib_win=$(wslpath -w "$script_dir/lib")
# Generate optimized abbreviations via transcript-format compile
python3 -c "
with open('dust.inf') as f: c = f.read()
with open('dust_t.inf', 'w') as f: f.write('!% \$TRANSCRIPT_FORMAT=1\n' + c)"
"$inform6" '+C:/Source/PunyInform/lib' "++$local_lib_win" -v5 "${inform6_flags[@]}" -r dust_t.inf dust_t.z5 >/dev/null 2>&1 || true
rm -f dust_t.inf dust_t.z5
zabbrev -cu -v -i > Build/abbrvs.h
rm -f gametext.txt
echo "Generated optimized abbreviations"
"$inform6" '+C:/Source/PunyInform/lib' "++$local_lib_win" -v5 "${inform6_flags[@]}" dust.inf dust.z5 >/dev/null
puny -b c64 -b apple2 -b bbc_acorn -b speccy -b plus4 -b macintosh -b atari_st -b mega65 -b msx -b trs80_m3 -b trs80_m4 -b c128 -b sam_coupe -b cpc_pcw -b dos -b amiga -b a8bit -b agon > build.log 2>&1

# puny -b agon

# --- Build Spectrum +3 disk (directly bootable via CP/M Plus) ----------------
# The standard speccy.sh template produces non-bootable CPC-format disks.
# We build a standalone bootable disk using the CP/M Plus system disk as base.
speccy_interpreters="$fiction_tools/Templates/Interpreters"
speccy_cpm_base="$speccy_interpreters/CPM_Plus_speccy.dsk"
speccy_vezza="$speccy_interpreters/Spec_Vezza.dsk"
if [[ -f "$speccy_cpm_base" && -f "$speccy_vezza" ]]; then
	echo "Building Spectrum +3 bootable disk..."
	# Extract the Vezza interpreter from its template disk
	speccy_tmp="$build_dir/.speccy-work"
	mkdir -p "$speccy_tmp"
	cp "$speccy_vezza" "$speccy_tmp/vezza.dsk"
	(cd "$speccy_tmp" && idsk vezza.dsk -g PLAY.COM >/dev/null 2>&1)

	# Start from the CP/M Plus system disk (correct Spectrum +3 sector IDs)
	cp "$speccy_cpm_base" "$build_dir/dust_speccy.dsk"
	# Remove unnecessary CP/M utilities to make room for the story
	for util in RPED.BAS BASIC.COM RAMDISC.FID DEVICE.COM DIR.COM \
		DISCKIT.COM DUMP.COM ED.COM ERASE.COM LANGUAGE.COM PALETTE.COM \
		PIP.COM RENAME.COM SET.COM SETDEF.COM SETKEYS.COM SETLST.COM \
		SETSIO.COM SET24X80.COM SHOW.COM TIMEOUT.COM TYPE.COM \
		RPED.SUB RESET.KEY; do
		idsk "$build_dir/dust_speccy.dsk" -r "$util" >/dev/null 2>&1 || true
	done
	# Add interpreter and story
	cp dust.z5 "$speccy_tmp/STORY.DAT"
	idsk "$build_dir/dust_speccy.dsk" -i "$speccy_tmp/PLAY.COM" -t 0 -f >/dev/null 2>&1
	idsk "$build_dir/dust_speccy.dsk" -i "$speccy_tmp/STORY.DAT" -t 0 -f >/dev/null 2>&1
	# Replace PROFILE.SUB to auto-run the interpreter
	idsk "$build_dir/dust_speccy.dsk" -r PROFILE.SUB >/dev/null 2>&1 || true
	if [[ -f "$build_dir/Resources/SCRLOAD.COM" ]]; then
		idsk "$build_dir/dust_speccy.dsk" -i "$build_dir/Resources/SCRLOAD.COM" -t 0 -f >/dev/null 2>&1
		printf 'scrload\r\nplay\r\n' > "$speccy_tmp/PROFILE.SUB"
	else
		printf 'play\r\n' > "$speccy_tmp/PROFILE.SUB"
	fi
	idsk "$build_dir/dust_speccy.dsk" -i "$speccy_tmp/PROFILE.SUB" -t 0 -f >/dev/null 2>&1
	rm -rf "$speccy_tmp"
	echo "Spectrum +3 bootable disks built."
else
	echo "Warning: Spectrum +3 template disks not found — skipping speccy build"
fi

if [[ "$build_release_zip" == true ]]; then
	# Package created disk images into a single zip for release consumers.
	# Add a timestamp to the filename so each release is unique.
	timestamp=$(date +%Y%m%d-%H%M)
	output_zip="$script_dir/Dust-Retro-Versions-${timestamp}.zip"
	# Remove any previously built release ZIPs.
	rm -f "$script_dir"/Dust-Retro-Versions-*.zip
	release_root="$build_dir/Releases"
	echo "Packaging retro images into $output_zip ..."

	rm -rf "$release_package_dir"
	mkdir -p "$release_package_dir"

	if [[ -f "$release_root/README.md" ]]; then
		cp -f "$release_root/README.md" "$release_package_dir/README.md"
	else
		cat > "$release_package_dir/README.md" <<'EOF'
Dust Retro Versions

This archive contains the retro target builds produced from PunyDust.
Use the files directly in an emulator or copy the platform-specific folder
contents to the relevant media image.
EOF
	fi

	# Single-file releases stay at the package root.
	release_root_files=(
		dust_amiga.adf
		dust_atari8bit.atr
		dust_atarist.st
		dust_bbc_elk.ssd
		dust_c128.d71
		dust_c64.d64
		dust_cpc_pcw.dsk
		dust_mac.dsk
		dust_mega65.d81
		dust_MSX.dsk
		dust_plus4.d64
		dust_sam_coupe.cpm
		dust.z5
	)

	for file in "${release_root_files[@]}"; do
		if [[ -f "$build_dir/$file" ]]; then
			cp -f "$build_dir/$file" "$release_package_dir/$file"
		fi
	done

	# Keep the Spectrum +3 release flat at the package root. The DSK is directly bootable.
	for file in dust_speccy.dsk; do
		if [[ -f "$build_dir/$file" ]]; then
			cp -f "$build_dir/$file" "$release_package_dir/$file"
		fi
	done

	# Keep the Apple II pair together so the archive does not flatten the two sides.
	if [[ -f "$build_dir/dust_apple2_s1.dsk" || -f "$build_dir/dust_apple2_s2.dsk" ]]; then
		mkdir -p "$release_package_dir/Apple2"
		for file in dust_apple2_s1.dsk dust_apple2_s2.dsk; do
			if [[ -f "$build_dir/$file" ]]; then
				cp -f "$build_dir/$file" "$release_package_dir/Apple2/$file"
			fi
		done
	fi

	# Keep the PC/DOS release together as a folder because it ships multiple files.
	if [[ -d "$release_root/DOS" ]]; then
		mkdir -p "$release_package_dir/PC"
		cp -R "$release_root/DOS/." "$release_package_dir/PC/"
	fi

	# Include Agon release folder (Agon Light / Console8)
	if [[ -d "$release_root/Agon" ]]; then
	    mkdir -p "$release_package_dir/Agon"
	    cp -R "$release_root/Agon/." "$release_package_dir/Agon/"
	fi

	# Include the generated platform resources, but keep the readme at the package root.
	if [[ -d "$build_dir/Resources" ]]; then
		mkdir -p "$release_package_dir/Resources"
		for resource_file in "$build_dir/Resources"/*; do
			[[ -e "$resource_file" ]] || continue
			resource_name=$(basename "$resource_file")
			[[ "$resource_name" == "README.md" ]] && continue
			cp -f "$resource_file" "$release_package_dir/Resources/$resource_name"
		done
	fi

	# Include the cover art in the Resources folder.
	if [[ -f "$cover_src" ]]; then
		mkdir -p "$release_package_dir/Resources"
		cp -f "$cover_src" "$release_package_dir/Resources/$(basename "$cover_src")"
	fi

	# External/ overrides: any file in Build/External/ replaces its counterpart
	# in the release package (matched by filename, placed at the package root).
	external_dir="$build_dir/External"
	if [[ -d "$external_dir" ]]; then
		for ext_file in "$external_dir"/*; do
			[[ -f "$ext_file" ]] || continue
			ext_name=$(basename "$ext_file")
			# Find and overwrite any existing copy anywhere in the package.
			found=false
			while IFS= read -r -d '' dest; do
				cp -f "$ext_file" "$dest"
				found=true
			done < <(find "$release_package_dir" -name "$ext_name" -print0)
			# If not found elsewhere, place it at the package root.
			if [[ "$found" == false ]]; then
				cp -f "$ext_file" "$release_package_dir/$ext_name"
			fi
		done
	fi

	if [[ ! -f "$release_package_dir/README.md" ]]; then
		echo "No release README found; cannot create $output_zip."
	else
		rm -f "$output_zip"
		if command -v zip >/dev/null 2>&1; then
			(
				cd "$release_package_dir"
				zip -r "$output_zip" . >/dev/null
			)
		else
			if command -v python3 >/dev/null 2>&1; then
				python3 - <<PY
import os
import zipfile

root = r"$release_package_dir"
output = r"$output_zip"
with zipfile.ZipFile(output, "w", zipfile.ZIP_DEFLATED) as archive:
	for current_root, _, files in os.walk(root):
		for file_name in files:
			full_path = os.path.join(current_root, file_name)
			archive.write(full_path, arcname=os.path.relpath(full_path, root).replace(os.sep, "/"))
PY
			else
				echo "Neither zip nor python3 available; cannot create $output_zip"
			fi
		fi
		echo "Created $output_zip"

		# Update the retro.html download link to point to the newly-named zip.
		retro_html="$script_dir/../Inform7/Dust.materials/Release/retro.html"
		if [[ -f "$retro_html" ]]; then
			newname=$(basename "$output_zip")
			# Replace any previous Dust-Retro-Versions*.zip filename with the new name.
			# Match anything between the base name and the .zip extension (handles prior timestamps).
			# Use a conservative pattern that stops at the closing quote to avoid crossing attributes.
			# Use extended regex via -E; ignore failures for portability.
			sed -i -E 's/Dust-Retro-Versions[^"]*\.zip/'"$newname"'/g' "$retro_html" || true
			echo "Updated $retro_html to reference $newname"
		fi
	fi
else
	echo "Skipping release ZIP packaging (--no-zip)."
fi