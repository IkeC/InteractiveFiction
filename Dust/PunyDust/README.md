# PunyDust

PunyDust is the PunyInform port of Dust. The game source is [dust.inf](dust.inf), with the compiled story file committed as [Build/dust.z5](Build/dust.z5) for quick test runs.

## Run

From the repository root:

```powershell
cd C:\Source\InteractiveFiction
python -m pip install -e ..\PunyTest
python -m pytest Dust/PunyDust/tests
```

To run the game directly in `dfrotz`:

```powershell
cd C:\Source\InteractiveFiction\Dust\PunyDust
..\..\tools\dfrotz.exe Build\dust.z5
```

The local `dfrotz` file in this directory is a Linux binary used from WSL, not the Windows interpreter.

If `Build/dust.z5` is missing, the test suite will compile `dust.inf` automatically as long as `inform6` and `dfrotz` are available.

The test helpers come from the separate public repository at `C:\Source\PunyTest`.
If you do not use editable installs, `Dust/PunyDust/tests/conftest.py` bootstraps that sibling path for pytest imports.

## Build

### Windows / PowerShell

Use the bundled Inform 6 compiler and the PunyInform library:

```powershell
cd C:\Source\InteractiveFiction\Dust\PunyDust
..\..\tools\inform6.exe "+C:\Source\PunyInform\lib" "++lib" -v5 -S -c -E1 dust.inf output.z5
Copy-Item output.z5 Build\dust.z5 -Force
```

Use `-SD` instead if you want a debug build.

### WSL / Bash

The Puny BuildTools project files now live in [Build/](Build/) so the release layout matches the artifact folder. From WSL, run them from there after making sure the required tools are available on `PATH`:

```bash
cd /mnt/c/Source/InteractiveFiction/Dust/PunyDust/Build
bash ./all.sh
```

`all.sh` builds the release targets configured in `config.sh`. `bundle.sh` packages the release files once the targets are built:

```bash
bash ./bundle.sh -t ~/Desktop
```

The shared release script stages `dust.inf` into `Build/`, normalizes `config.sh` for WSL, and leaves the finished outputs there.

### Windows and WSL release wrappers

[`release.sh`](release.sh) is the WSL entrypoint for the shared release flow. It accepts `--debug` or `--no-debug` and defaults to the non-debug build. [`release.cmd`](release.cmd) launches it from Windows for the non-debug flow, and [`release-debug.cmd`](release-debug.cmd) launches the debug flow. Both paths build the three release outputs used most often in this repo: `z5`, `amiga`, and `c64`. The finished files are copied into [Build/](Build/), and the release ZIP keeps multi-file variants grouped in subdirectories such as `Apple2/` and `PC/`.

The archive layout and version notes live in [Build/Releases/README.md](Build/Releases/README.md).

## Notes

- `config.sh` controls the Puny BuildTools release name and target metadata.
- `release.sh` is the small local deployment wrapper used for copying the story file and rebuilding selected targets into [Build/](Build/). Pass `--debug` for the debug build or `--no-debug` for the release build.
- `release.cmd` is the Windows launcher for the non-debug flow.
- `release-debug.cmd` is the Windows launcher for the debug flow.
- The test suite lives in [tests/](tests/).