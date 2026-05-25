"Dust" by "IkeC"

Include Ext by IkeC.
[Include German by Team GerX.]
Include Hybrid Choices by AW Freyr.
Include Room Description Control by Emily Short.
Include Ordinary Room Description by Emily Short.
Include Basic Screen Effects by Emily Short.

The story headline is "A Western".
The story description is "A Western by IkeC".
The story creation year is 2024.

[Use skip libcheck.]

The Release number is 4.

Release along with cover art ("tumbleweed"), 
	the "Quixe" interpreter,
	a file of "Hints" called "Hints.html",
	a file of "Walkthrough" called "Walkthrough.txt",
	a file of "Map" called "Map.png",
	a file of "Flowchart" called "Flowchart.png".

Table of Dust-Status
left	central 	right
" [location]"	""	"Dust"

Rule for constructing the status line:
	fill status bar with Table of Dust-Status;
	rule succeeds.

Debug is a truth state that varies. 
Debug is true.
toggle-debug is an action applying to nothing.
Understand "debug" as toggle-debug.
Instead of toggle-debug:
	if Debug is false:
		now Debug is true;
		say "Debug Mode on";
	else:
		now Debug is false;
		say "Debug Mode off";

A description-concealing rule:
	now every thing is not marked for listing.

Beta is a truth state that varies.
Beta is false.

Section A - For Release only

When play begins: now Debug is false.

Section B - Global Tests

[Nach Sheriff, mit Tasche]
Test X with "p bag / test 4b / p bag / out / open bag".

[Olaf: Hauptstraße]
Test Oa with "höre / look through window / open window / u windpump / r / u bardame / t ella / 2 / 2 / 1 / 1 / 3 / up / p all / down / t ella / 1 / 1 / 1 / 1 / trink coffee / trink coffee / trink coffee / give ella die cup / n / w / t der woman / 1 / 1 / 1 / 1 / t sheriff / 1 / 1 / 1 / 1 / 1 / 1 / p all / x bag / open bag / carry bag / se".

[Olaf: Hauptstraße-Laden-Hauptstraße]
Test Ob with "n / t bill / 2 / 4 / x shelves / buy sugar / t bill / 2 / 1 / 1 / 1 / 1 / p sugar / ask bill nach sugar / s"

[Olaf: Hauptstraße-Sheriff-Barber-Hauptstraße]
Test Oc with "nw / t dunder / so / ne / x novelties / t parrot / again / again / u barber / t ihm / 1 / 1 / 2 / 1 / 1 / 2 / p molly / shoot marten / sw"

[Olaf: Hauptstraße-Mine-Hankie-Hauptstraße]
Test Od with "w / w / u scrub / p hankie / u hankie / look / t man / shoot man / show man hankie / e / e"

[Olaf: Hauptstraße-Windpump-Hillkette-Hauptstraße]
Test Oe with "w / s / climb windpump / w / u stones / e / n / e"

[Olaf: Hauptstraße-Gallows-Cemetery-Hauptstraße]
Test Of with "e / u gallows / p rope / p noose / u platform / u sand / look unter platform / n / u crosses / 1 / 2 / 3 / 4 / 5 / s / w"

[Olaf: Hauptstraße-Ella-Hankie-Hauptstraße]
Test Og with "s / t ella / 1 / 1 / 1 / 1 / p cloth / n"

[Olaf: Hauptstraße-Barber-Shovel-Saloon-Cookie-Hauptstraße]
Test Oh with "ne / t marten / 2 / 2 / 2 / 2 / 2 / out / s / x counter / p cookie / n"

[Olaf: Hauptstraße-Barber-Molly-Hauptstraße]
Test Oi with "ne / give molly den cookie / p molly / out"

[Olaf: Hauptstraße-Hillkette-Hauptstraße]
Test Oj with "w / s / w / x rock / x boulder / dig crevice / dig with shovel / dig boulder with shovel / dig boulder / dig crevice with shovel / use shovel with crevice / use shovel with boulder / use shovel with stones / stick shovel in crevice / e / x mast / p rod / n / e / drop rod / e"

[Olaf: Hauptstraße-Bill-Cemetery-Hauptstraße]
Test Ok with "n / t bill / 1 / 1 / 1 / 1 / 1 / 1 / s / e / n / look graves / 1 / 2 / 5 / s / w / n / give bill den pince-nez / t bill / 1 / 1 / 1 / i / p crowbar / x crowbar / s"

[Olaf: Hauptstraße-Cave]
Test Ol with "w / s / w / stick crowbar in crevice / e / n / p rod / s / w / stick rod ins loch / drücke rod / l / n / i"

Test O with "Test Oa / Test Ob / Test Oc / Test Od / Test Oe / Test Of / Test Oe / Test Og / Test Oh / Test Oi / Test Oj / Test Ok / Test Ol"

Test O2 with "Test Oa / Test Ob / Test Oc / Test Od / Test Oe / Test Of / Test Oe / Test Og / Test Oh / Test Oi"

[Kepp: Sheriff]
Test Ka with "info / x window / x nightstand / p bag / n / s / w / e / x / i / open bag / X draft notice / x zeichnung / x geld / x revolver / out / t woman / 1 / 2 / 2 / 1 / 1 / 1 / trink die plörre / p cookie / p coffee / trink coffee / x / raum / X tribüne / x balken / p lamp / out / use revolver / hand / s / out / n / w / t woman / 1 / 1 / 1 / 1 / l / t sheriff"

Test K with "Test Ka"

[Hannes]
Test h1 with "i / smell / p bag / open bag / u kleidung / lass kleidung fallen / hau wand / u putz / u window / look durch scheibe / schließe door / b treppe / geh treppe down / smell / smell mich / out / open schwingdoor / ella, hallo / t woman / 1 / 1 / 2 / 1 / 1 / 1 / out / open sheriff"

Test h2 with "w / smell / t woman / 1 / 1 / 1 / 1 / sit on bed / t sheriff / 1 / 1 / 1 / 1 / 1 / 1 / p bag / out"

Test h3 with "n / p all aus shelvesn / p schachteln / p tins / talk with bill / 1 / 1 / 1 / 1 / 1 / 1 / buy tools / out"

Test h4 with "no / x mirror / p tins / t marten / 1 / 1 / 1 / 1 / 2 / p scissors / b martens appearance / out"

Test h5 with "o / u house / b gallows / p sand / n / s / w / s / p cookie / trink coffee / t ella / 1 / 1 / n"

Test h6 with "give molly cookie / t molly / out / w / sit on bank / go into stall / enter paddock / p gras / go into house / open door"

Test h7 with "s / kletter windpump / kletter mast / w / durchsuche boulder field / e / n / w / b scrub / p hankie / b man / talk with ihm / g / g / g / shoot man / b cart / enter cart / b torch / go into mine / e / o"

Test h8 with "nw / t sheriff / 1 / 1 / out / n / t bill / 1 / 1 / run barber / t marten / 1 / 2 / 3 / 2 / 2 / 2 / p molly / give molly cookie / p molly / out / e / dig / dig sand / dig sand with shovel / b plate"

Test h9 with "pull nails out / pull plate / run hill / b rock / b boulder / x cavity / b crevice / b cavity / reach into cavity / stick shovel in crevice / run cemetery / u cross / 1 / 2 / 3 / 4 / 5 / run bill / t bill / 1 / 1 / 1 / 1 / 1 / 1"

Test h10 with "run cemetery / u cross / 2 / 5 / b stones / 2 / 5 / s / w / n / t bill / 1 / 1 / 1 / p crowbar / run hill / stick crowbar in crevice / e / p rod / w / stick rod in crevice"

Test h11 with "n / n / run ella / t ella / 1 / 1 / 1 / 1 / p lamp / p lamp with crowbar / use crowbar with lamp / use shovel with lamp / shoot nail / pull nail / n"

Test h12 with "o / use crowbar with platform / x opening / run ella / p chair / use chair with lamp / p lamp / climb chair / p lamp / down / out"

Test h13 with "n / t bill / 1 / 1 / p matches / run cave / light lamp on / run gallows / p noose / b platform / p rope / run cave / knot rope on rock / down / hit man with crowbar / go into niche / lösche lamp / puste lamp aus / smell hankie".

Test h14 with "hit man / throw hankie / hit man with crowbar / talk with lucy / 1 / 1 / open bag / shoot men / b barrels / shoot barrels / b barrels / b cart / b wedge / shoot wedge / t lucy / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 1"

Test H with "Test h1 / test h2 / test h3 / test h4 / test h5 / test h6 / test h7 / test h8 / test h9 / test h10 / test h11 / test h12 / test h13 / test h14"

[Ende / Fin]
Test F1 with "x nightstand / p bag / down / x woman / t woman / 1 / 1 / 1 / 1 / 1 / 1 / x counter / p cookie / eat cookie / drink from cup / drink cup"

Test F2 with "out / w / t woman / 1 / 1 / 2 / t dunder / 1 / 1 / 1 / 1 / 1 / 1 / p bag / out / open bag / w / w / p hankie"

Test F3 with "e / e / ne / l / x barber / t barber / 1 / 1 / 1 / 1 / 1 / 2 / 3 / t molly / t molly / t molly / p molly"

Test F4 with "i / use cookie with molly / p molly / t marten / 2 / 2 / p molly / i / out / w / s / x tower / p rod / w / x boulder field / l / use rod with crevice"

Test F5 with "x boulder / e / n / e / drop rod / e / n / t bill / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 2"

Test F6 with  "s / e / n / x cross / 1 / 2 / 3 / 4 / 5 / s / w / n"

Test F7 with "t bill / 1 / 1 / s / e / n / x grave / 1 / 2 / 5 / s / w / n / t bill / 1 / 1 / 1 / p crowbar / s / w / p rod / s / w"

Test F8 with "use crowbar with crevice / use rod with crevice / l / n / e / w / n / s / e / n / e / s"

Test F9 with "x ceiling / x lamp / p lamp / pull chair / p lamp / t woman / 1 / 1 / 1 / 1 / 1 / get on chair / p lamp / x lamp / turn on lamp / get down / t ella / 1 / 1 / n / n"

Test F10 with "t Bill / 1 / 1 / p matches / light lamp / s / w / s / w / n / n / x precipice / down" 

Test F11 with "s / e / n / e / n / t bill / 1 / 1 / 1 / s / ne / t marten / 1 / 1 / 1 / out / e / x platform / p sand / w / ne / t marten / 1 / 1 / 1 / out"

Test F12 with "e / use shovel with sand / x plate / use crowbar with plate / x opening / p rope / w / w / s / w / n / use rope with crevice / use rope with rock / down"

Test F13 with "x man / x niche / x vats / x Lucy / x Michael / use revolver with man / t man / drop hankie / s / hit man"

Test F14 with "use shovel with fellow / t guard / x guard / look / x niche / e / up / t couple / 1 / 1 / x entrance / x cart / x wedge / l / e / l / up / l"

Test F15 with "use revolver with men / use revolver with cart / use revolver with barrels / use crowbar with man / use shovel with thompson"

Test F16 with "use revolver with wedge / out / p draft notice / t dunder / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 1 / look"

Test Fin with "test F1 / test F2 / test F3 / test F4 / test F5 / test F6 / test F7 / test F8 / test F9 / test F10 / test F11 / test F12 / test F13 / test F14  / test F15 / test F16"

Test FB1 with "test F1 / out / w / debug / t woman / 1 / 1"

Test FB2 with "test F1 / test F2 / test F3 / test F4 / test F5 / test F6 / test F7 / pry crevice with crowbar"

Test FX with "test F1 / test F2 / test F3 / test F4 / test F5 / test F6 / test F7 / test F8 / test f9 / test f10 / test f11 / test f12"

Section C - Setup

Understand "load" as restoring the game.

To say TODO: say " (to be continued)".

To say name-Brüder: say "Mifflin brothers". [Calvin und Bob]
To say name-Bürgermeister: say "Thompson". [Ron]

Shooting it with is an action applying to two visible things.
Understand "shoot with [something] on/at [something]", "shoot on/at [something] with [something]", "shoot [something] with [something]" as shooting it with.
Check shooting something with something:
	if the noun is Revolver:
		try shooting the second noun;
	else if the second noun is Revolver:
		try shooting the noun;
	else:
		say "You can't shoot with that.".

Shooting is an action applying to one thing.
Understand "shoot [something]" as shooting.
Check shooting something:
	if player has Revolver or (player has Tasche and Tasche contains Revolver and Tasche is open):
		if player is in r-Gewoelbe and Lucy is entdeckt:
			if the noun is Männer:
				say "[Schiess-Männer-desc]";
			else if the noun is Karren:
				say "[Schiess-Karren-desc]";
			else if the noun is Fässer:
				say "[Schiess-Fässer-desc]";
			else if the noun is Keil:
				say "[Schiess-Keil-desc]";
			else:
				say "Shooting at that would not accomplish anything.";
		else if player is in r-Gewoelbe and Geselle is not bewusstlos and Lucy is not entdeckt:
			say "That would cause quite a stir. A more inconspicuous approach would probably make more sense.";
		else:
			say "[one of]It wouldn't be a good idea to shoot at [the noun][or]You should save your ammunition[at random].";
	else:
		say "You have nothing to shoot with.".

Carry out graben something with something:
	if the noun is the Sand and the second noun is the Schaufel:
		try using Schaufel on Sand;
	else if the noun is the Spalt and the second noun is the Schaufel:
		try using Schaufel on Spalt;
	else:
		say "You can't dig [the noun] with [the second noun].".

Rule for deciding whether all includes things: it does not.

The restore the game rule response (A) is "Restore failed. The game may have been updated since you saved your game.[paragraph break]Please click [bold type]Previous Version[roman type] on the left side (https://ikeserver.de/Dust/previous.html) and try to restore your game there.".

Section D - Benutzen

[Benutze]
Carry out using something on something:
	[Benutze Stange]
	if the noun is the Stange:
		if the player carries the Stange:
			if the second noun is the Spalt or the second noun is the Brocken:
				if Spalt is bearbeitet:
					now pg-Bill-Spalt is inactive;
					say "You slowly push the long metal rod into the gap. It fits perfectly![paragraph break]You grab the rod with both hands at the free end and push it hard towards the mountain. The boulder seems to move slightly. 'BRAAAK!' Molly croaks excitedly and settles on your shoulder.[paragraph break]You look around again - there doesn't seem to be anyone within earshot. You brace yourself against the rod again with all your weight, and lo and behold - the boulder comes loose![paragraph break][bold type]RRRRRRRRRRRRRRR...[roman type]";
					if Lampe is not allowed-to-take:
						now pg-Bill-Laterne is active;
						now pg-Barfrau-Laterne is active;
					move player to r-Flashback-2;
				otherwise: [Spalt nicht bearbeitet]
					say "You pry, push and curse, but unfortunately the gap is not wide enough to push the rod in. You probably won't get any further here without a suitable tool.";
			otherwise: [Stange mit irgendwas benutzen]
				say "You cannot use the rod with that.";
		otherwise: [not carry Stange]
			say "You don't have a rod.";
	[Benutze Brecheisen]
	else if the noun is the Brecheisen:
		if the player carries the Brecheisen:
			if the second noun is Lampe and player does not have Lampe:
				if Lampe is not allowed-to-take:
					say "[The Barfrau] raises an eyebrow. 'What do you think you're doing there?'";
				else:
					say "You fumble the lamp off the nail with the crowbar.";
					now player has Lampe;
					now pg-Barfrau-anzünden is active;
					now pg-Bill-anzünden is active;
					now pg-Bill-Laterne is inactive;
				stop the action;
			else if the second noun is Männer:
				say "[Männer-Brecheisen-desc]";
				stop the action;
			else if the second noun is the Geselle:
				try attacking Geselle with Brecheisen instead;
			else if the second noun is the Brocken:
				try using Brecheisen on Spalt instead;
			else if the second noun is the Spalt:
				if Spalt is not bearbeitet:
					say "You push the flat, straight end of the crowbar into the gap and hammer on the curved end with a flat stone.[paragraph break]You knock and pry for a while until a flat, hand-width piece of rock finally breaks off the boulder. The gap is now much wider.[paragraph break]You put the crowbar back in.";
					now Spalt is bearbeitet;
					now pg-Bill-Spalt is active;
					stop the action;
				else: [Spalt schon bearbeitet]
					say "You have already widened the gap. Unfortunately, the crowbar is too short to use as a lever.";
					stop the action;
			if the second noun is the Podest:
				if Podest is not entdeckt:
					say "You don't really know where you could apply the crowbar here.";
				else if Podest is geöffnet:
					say "The hatch is already open.";
				else: 
					say "You pry one nail after another out of the platform, not without regularly swearing and asking yourself out loud what the hell you're doing here.
					
					About half an hour and a broken fingernail later, you have successfully removed all the nails. Drenched in sweat, you push the wooden panel aside to reveal a square, dark opening.";
					now Podest is geöffnet;
					now Seil is in r-Galgen;
					now Podestkram is in r-Galgen;
			otherwise: [Mit irgendwas benutzen]
				say "You cannot use the crowbar with that.";
		otherwise: [not carry Brecheisen]
			say "You don't have a crowbar.";
	[Benutze Schaufel]
	else if the noun is the Schaufel:
		if the player carries the Schaufel:
			if the second noun is Lampe and player does not have Lampe:
				if Lampe is not allowed-to-take:
					say "[The Barfrau] raises an eyebrow. 'What do you think you're doing there?'";
				else:
					say "You fumble the lamp off the nail with the shovel.";
					now player has Lampe;
					now pg-Barfrau-anzünden is active;
					now pg-Bill-anzünden is active;
					now pg-Bill-Laterne is inactive;
				stop the action;
			else if the second noun is Männer:
				say "[Männer-Schaufel-desc]";
				stop the action;
			else if the second noun is Geselle:
				try attacking Geselle with Schaufel instead;
			else if the second noun is the Sand or the second noun is the Podest:
				if Podest is entdeckt:
					say "You are actually already satisfied with the result.";
				else:
					say "Piece by piece, you free the platform from the large pile of sand, while the wind whips relentlessly in your face.[paragraph break]Directly under the gallows, a sturdy wooden board becomes visible, which has been carefully nailed to the pedestal with a lot of large nails.";
					now Podest is entdeckt;
			else if the second noun is Spalt or the second noun is the Brocken:
				say "This is solid rock, digging is useless here.
				
				You could stick the shovel into the gap, but the wooden handle would certainly break if you tried to use it as a lever.
				
				But not a bad idea in principle."; 
			otherwise: [Mit irgendwas benutzen]
				say "You can't use [the noun] with that.";
		otherwise: [not carry Schaufel]
			say "You don't have a shovel.";	
	[Benutze Streichhölzer]
	else if the noun is the Streichhölzer:
		if the player carries the Streichhölzer:
			if the second noun is the Lampe:
				if the Lampe is lit:
					say "The lamp is already burning.";
				else:
					say "[desc-Lampe-an][run paragraph on]";
					now Lampe is lit;
			otherwise: [Mit irgendwas benutzen]
				say "You can't use [the noun] with that.";
		otherwise: [not carry Streichhölzer]
			say "You don't have any matches.";
	[Benutze Lampe]
	else if the noun is the Lampe:
		if the player carries the Lampe:
			if the second noun is the Streichhölzer:
				if the Lampe is lit:
					say "The lamp is already burning.";
				else:
					say "[desc-Lampe-an]";
					now Lampe is lit;
			else if the second noun is the Seil:
				try using Seil on Lampe instead;
			otherwise: [Mit irgendwas benutzen]
				say "You can't use [the noun] with that.";
		otherwise: [not carry Streichhölzer]
			say "You don't have any matches.";
	[Benutze Seil]
	else if the noun is Seil:
		if the player carries Seil:
			if the second noun is Abgrund:
				say "Simply throwing the rope into the abyss will probably not help.";
			else if the second noun is Spitzfelsen:
				say "You tie the rope around the rock and secure it with a proper knot.";
				now Seil is angebunden;
				now Seil is in r-Hoehle;
			else if the second noun is Lampe:
				say "The rope is too thick to tie the lamp to and you don't really want to let it out of your hand anyway.";
			otherwise: [Mit irgendwas benutzen]
				say "You can't use [the noun] with that.";
		otherwise: [not carry Seil]
			say "You have no rope.";
	[Benutze Revolver]
	else if the noun is Revolver:
		if the second noun is Geselle:
			try attacking Geselle with Revolver instead;
		else:
			try shooting the second noun instead;
	[Benutze Taschentuch]
	else if the noun is Taschentuch:
		if the second noun is Geselle:
			try dropping Taschentuch instead;
		else: [Mit irgendwas benutzen]
			say "You can't use [the noun] with that.";
	[Benutze Keks]
	else if the noun is Keks:
		if the second noun is Papagei:
			try giving Keks to Papagei instead;
		else: [Mit irgendwas benutzen]
			say "You can't use [the noun] with that.";
	[Benutze Stuhl]
	else if the noun is the Stuhl:
		if the second noun is Lampe or the second noun is Balken or the second noun is Nagel:
			try pulling Stuhl instead;
		else: [Mit irgendwas benutzen]
			say "You can't use [the noun] with that.";
	[Benutze Brocken]
	else if the noun is the Brocken:
		if the second noun is Brecheisen:
			try using Brecheisen on Brocken instead;
		else: [Mit irgendwas benutzen]
			say "You can't use [the noun] with that.";
	otherwise: [noun nicht bekannt]
		say "[desc-funktioniert-nicht][run paragraph on][line break]".

Section E - Random Events
[Random Events in Hauptstraße, Ranch, Galgen, Windrad, Friedhof]

To say random-event:
	Increase Visitcounter of the location by 1;
	if Visitcounter of r-Hauptstraße is 2 and player is in r-Hauptstraße and Lucy is in r-Ranch:
		say "[paragraph break]As the wind drops for a moment, you think you hear a soft whimper from the west.[run paragraph on]";
	if Visitcounter of r-Hauptstraße is 5 and player is in r-Hauptstraße:
		say "[paragraph break]A cat trots past you at a leisurely pace, gives you a tired look and disappears into the shadows between the houses.[run paragraph on]";
	else if Visitcounter of r-Hauptstraße is 9 and player is in r-Hauptstraße:
		say "[paragraph break]A vulture sits on the roof gable in front of you and looks at you suspiciously before flying away.[run paragraph on]";
	else if Visitcounter of r-Hauptstraße is 13 and player is in r-Hauptstraße:
		say "[paragraph break]A window shutter flies open with a loud bang and a blanket is vigorously shaken out by two thick arms. It disappears in an impressive dust cloud and the window is slammed shut again with a crash.[run paragraph on]";
	else if Visitcounter of r-Ranch is 2 and player is in r-Ranch and Lucy is in r-Gewoelbe:
		say "[paragraph break]You hear a muffled bang followed by quiet cursing from the west.[run paragraph on]";
	else if Visitcounter of r-Ranch is 4 and player is in r-Ranch:
		say "[paragraph break]Something whizzes past your head and lands in the paddock in front of you. A little boy sprints up and jumps over the fence.[paragraph break]Shortly afterwards he reappears with a ball of cloth under his arm and runs off. 'You ain[']t seen nothin['], mister!'[run paragraph on]";
	else if Visitcounter of r-Ranch is 7 and player is in r-Ranch:
		say "[paragraph break]You hear the soft rattle of a rattlesnake. As you step next to the house with your revolver drawn, it quickly disappears into the steppe.[run paragraph on]";
	else if Visitcounter of r-Ranch is 10 and player is in r-Ranch:
		say "[paragraph break]A scrawny dog chases past you, panting at a monkey's pace, a piece of jerky between its teeth. A few houses further on, you hear someone swearing loudly.[run paragraph on]";
	else if Visitcounter of r-Galgen is 3 and player is in r-Galgen:
		say "[paragraph break]'Looking for your friends, eh? We don't want to see the likes of you around here anymore!'[paragraph break]You look around, puzzled, and see an elderly woman disappear into one of the houses, poking the air wildly with her walking stick.[run paragraph on]";
	else if Visitcounter of r-Windrad is 3 and player is in r-Windrad:
		say "[paragraph break]Two coyotes sneak up to within a few yards of you. You pick up a stone and throw it roughly in their direction, causing them to howl and run away.[run paragraph on]";
	else if Visitcounter of r-Windrad is 6 and player is in r-Windrad:
		say "[paragraph break]A pack of coyotes seem to be watching you from a distance. You make a casual throwing motion and they run off.[run paragraph on]";
	else if Visitcounter of r-Windrad is 8 and player is in r-Windrad:
		say "[paragraph break][italic type]squeeeak ... squeeeeeak ...[roman type][paragraph break]You can't stand to hear that damn wind pump anymore, let alone see it. What is it for anyway?[paragraph break]You wipe the sweat from your brow and consider running more often to make faster progress.[run paragraph on]";
	else if Visitcounter of r-Friedhof is 2 and player is in r-Friedhof:
		say "[paragraph break]A gecko sits rigidly on one of the grave crosses basking in the sun. As you reach out for it, it disappears into the bushes in a flash.[run paragraph on]";

Section F - Laufen

Nur-Laufen is an action applying to nothing.
Understand the command "run" as something new.
Understand "run" as nur-laufen.
Check Nur-Laufen:
	say "You can RUN TO... these places: [bekannte-orte]";
	
Laufen is an action applying to one topic.
Understand "run [text]", "run to [text]" as laufen.

To say bekannte-orte:
	say "[line break]";
	if r-Zimmer is visited, say "- Room[line break]";
	if r-Saloon is visited, say "- Saloon (Ella)[line break]";
	if r-Hauptstraße is visited, say "- Main Street[line break]";
	if r-Sheriff is visited, say "- Sheriff (Dunder)[line break]";
	if r-Laden is visited, say "- Store (Bill)[line break]";
	if r-Barbier is visited, say "- Barber (Marten)[line break]";
	if r-Ranch is visited, say "- Ranch[line break]";
	if r-Galgen is visited, say "- Gallows[line break]";
	if r-Friedhof is visited, say "- Cemetery[line break]";
	if r-Mine is visited, say "- Mine[line break]";
	if r-Windrad is visited, say "- Wind Pump[line break]";
	if r-Huegelkette is visited, say "- Hill Chain[line break]";
	if r-Hoehle is visited, say "- Cave[line break]";
	if r-Gewoelbe is visited, say "- Vault[line break]";

To say ort-unbekannt:
	say "I don't know where that is yet.[line break]";

To say ort-schon-da:
	say "You're already there![line break]";

To say ort-stange:
	say "You shouldn't walk around town with a long metal rod.[line break]";

Carry out laufen:
	if player is in r-Steppe:
		say "There is no turning back. Your next adventure is waiting somewhere else.";
	else if player is eingesperrt:
		say "You can't just leave now.";
	else if player is in r-Gewoelbe:
		say "You can't just leave now.";
	else if "[the topic understood in lower case]" matches the text "room":
		if player has Stange:
			say "[ort-stange]";
		else if player is not in r-Zimmer:
			say "[desc-Laufen]";
			now player is in r-Zimmer;
		else: 
			say "[ort-schon-da]";
	else if "[the topic understood in lower case]" matches the text "saloon" or "[the topic understood in lower case]" matches the text "ella":
		if r-Saloon is unvisited:
			say "[ort-unbekannt]";
		else if player has Stange:
			say "[ort-stange]";
		else if player is not in r-Saloon:
			say "[desc-Laufen]";
			now player is in r-Saloon;
		else:
			say "[ort-schon-da]";
	else if "[the topic understood in lower case]" matches the text "main" or "[the topic understood in lower case]" matches the text "street":
		if r-Hauptstraße is unvisited:
			say "[ort-unbekannt]";
		else if player has Stange:
			say "[ort-stange]";
		else if player is not in r-Hauptstraße:
			say "[desc-Laufen]";
			now player is in r-Hauptstraße;
		else:
			say "[ort-schon-da]";
	else if "[the topic understood in lower case]" matches the text "sheriff" or "[the topic understood in lower case]" matches the text "dunder":
		if r-Sheriff is unvisited:
			say "[ort-unbekannt]";
		else if player has Stange:
			say "[ort-stange]";
		else if player is not in r-Sheriff:
			say "[desc-Laufen]";
			now player is in r-Sheriff;
		else:
			say "[ort-schon-da]";
	else if "[the topic understood in lower case]" matches the text "store" or "[the topic understood in lower case]" matches the text "bill":
		if r-Laden is unvisited:
			say "[ort-unbekannt]";
		else if player has Stange:
			say "[ort-stange]";
		else if player is not in r-Laden:
			say "[desc-Laufen]";
			now player is in r-Laden;
		else:
			say "[ort-schon-da]";
	else if "[the topic understood in lower case]" matches the text "barber" or "[the topic understood in lower case]" matches the text "marten":
		if r-Barbier is unvisited:
			say "[ort-unbekannt]";
		else if player has Stange:
			say "[ort-stange]";
		else if player is not in r-Barbier:
			say "[desc-Laufen]";
			now player is in r-Barbier;
		else:
			say "[ort-schon-da]";
	else if "[the topic understood in lower case]" matches the text "cemetery":
		if r-Friedhof is unvisited:
			say "[ort-unbekannt]";
		else if player has Stange:
			say "[ort-stange]";
		else if player is not in r-Friedhof:
			say "[desc-Laufen]";
			now player is in r-Friedhof;
		else:
			say "[ort-schon-da]";
	else if "[the topic understood in lower case]" matches the text "ranch":
		if r-Ranch is unvisited:
			say "[ort-unbekannt]";
		else if player has Stange:
			say "[ort-stange]";
		else if player is not in r-Ranch:
			say "[desc-Laufen]";
			now player is in r-Ranch;
		else:
			say "[ort-schon-da]";
	else if "[the topic understood in lower case]" matches the text "gallows":
		if r-Galgen is unvisited:
			say "[ort-unbekannt]";
		else if player has Stange:
			say "[ort-stange]";
		else if player is not in r-Galgen:
			say "[desc-Laufen]";
			now player is in r-Galgen;
		else:
			say "[ort-schon-da]";
	else if "[the topic understood in lower case]" matches the text "mine":
		if r-Mine is unvisited:
			say "[ort-unbekannt]";
		else if player is not in r-Mine:
			say "[desc-Laufen]";
			now player is in r-Mine;
		else:
			say "[ort-schon-da]";
	else if "[the topic understood in lower case]" matches the text "wind" or "[the topic understood in lower case]" matches the text "pump":
		if r-Windrad is unvisited:
			say "[ort-unbekannt]";
		else if player is not in r-Windrad:
			say "[desc-Laufen]";
			now player is in r-Windrad;
		else:
			say "[ort-schon-da]";
	else if "[the topic understood in lower case]" matches the text "hill":
		if r-Huegelkette is unvisited:
			say "[ort-unbekannt]";
		else if player is not in r-Huegelkette:
			say "[desc-Laufen]";
			now player is in r-Huegelkette;
		else:
			say "[ort-schon-da]";
	else if "[the topic understood in lower case]" matches the text "cave":
		if r-Hoehle is unvisited:
			say "[ort-unbekannt]";
		else if player is not in r-Hoehle:
			say "[desc-Laufen]";
			now player is in r-Hoehle;
		else:
			say "[ort-schon-da]";
	else if "[the topic understood in lower case]" matches the text "vault":
		if r-Gewoelbe is unvisited:
			say "[ort-unbekannt]";
		else if player is not in r-Gewoelbe:
			say "[desc-Laufen]";
			now player is in r-Gewoelbe;
		else:
			say "[ort-schon-da]";
	else:
		say "I don't know where that is. Known places:[bekannte-orte]";

To say desc-Laufen:
	say "[italic type][one of]A short time later...[or]A few steps later...[or]A few minutes later...[or]Shortly afterwards...[or]A bit later...[at random][roman type]";

Test lauf with "lauf".

Section G - Start

The description of player is "You've been through worse, but you could probably do with a bath and a shave.".

The Geruch of player is "It's been a while since your last bath, and you can definitely smell it. However, it's not bad enough to attract any unpleasant attention in this area (yet).".

When play begins:
	now the player wears Kleidung;
	now the right alignment depth is 7;
	say "[italic type]squeeeak ...[line break]squeeeak ...[line break]squeeeeeak ...[roman type]

You wake up slowly.

Your head is rumbling and your blood pulsates painfully through your temples.";
	if Beta is true:
		move player to r-Beta, without printing a room description.
		
Section 1 - Zimmer

r-Zimmer is a room. The printed name is "Room". 
The description is "[if unvisited]You cough twice and finally manage to pull yourself up from the dusty floorboards.[paragraph break][end if]This room is rather sparsely furnished. There's a [Bett] in the corner with a small [Nachttisch] to the left. The opposite [Wand] features a small [Fenster]. A plain [Holztuer] leads outside and down the [Saloontreppe].[if unvisited][paragraph break]Please enter [bold type]INFO[roman type] now for instructions on how to play, especially if you've never played a game like this before.[end if]".
Understand "Room" as r-Zimmer.
r-Zimmer is inside of r-Saloon.
The Geruch of r-Zimmer is "It smells slightly of piss, but you've slept in far worse places."

Instead of going north in r-Zimmer: try going west instead.
Instead of going south in r-Zimmer: try going west instead.
Instead of going east in r-Zimmer: try going west instead.
Instead of going northeast in r-Zimmer: try going west instead.
Instead of going northwest in r-Zimmer: try going west instead.
Instead of going southeast in r-Zimmer: try going west instead.
Instead of going southwest in r-Zimmer: try going west instead.
Instead of going west in r-Zimmer:
	say "You could go DOWN or OUT.";

A Holztuer is a door. The printed name is "wooden door". 
The Holztuer is above the r-Saloon and below the r-Zimmer. It is open.
The description is "A wooden door with roughly crafted hinges.". 
Understand "wooden door", "door", "hinges" as Holztuer.
Instead of closing Holztuer, say "You'd rather leave it open.".
Instead of opening Holztuer, say "The door is open, you can simply walk OUT.".

Instead of using door when player is in r-Zimmer, try going down.
Instead of using door when player is in r-Saloon, try going up.

A Saloontreppe is scenery in the r-Zimmer. The printed name is "stairs". 
Instead of doing anything with the Saloontreppe, say "The door is open, you can simply walk OUT.".
Understand "stairs" as Saloontreppe.

A Nachttisch is a container in r-Zimmer. The printed name is "nightstand". 
The description is "A small bedside table with an open compartment." 
Understand "stand", "nightstand", "night stand", "bedside table", "table", "compartment" as Nachttisch.
The Nachttisch is fixed in place.
The Nachttisch contains a Tasche.
Instead of opening Nachttisch, try examining Nachttisch.

A Tasche is a closed openable container. The printed name is "shoulder bag". 
The description is "A scuffed shoulder bag made from slightly cracked leather.[if Tasche is closed] It is closed.[end if]".
Understand "shoulder bag", "stuff", "bag" as Tasche.
The Tasche contains a Revolver, a Einberufungsbescheid, a Zeichnung and a Geld.
The Tasche is a player's holdall.
Instead of inserting sperrig into Tasche, say "That won't fit into the bag.".

After examining the Zeichnung for the first time:
	if player does not have Zeichnung:
		say "You carefully tuck the drawing into the inside of your vest.";
		now the player has the Zeichnung.

After taking the Zeichnung:
 	say "You carefully tuck the drawing into the inside of your vest.".

A Revolver is a thing. The printed name is "revolver". 
The description is "Your Colt Navy, Model 1861. Freshly cleaned, loaded and ready to fire."
Understand "revolver", "colt", "gun", "pistol", "firearm", "ammo", "ammunition", "bullets", "weapon", "chamber" as Revolver.
A Revolver is wertvoll.
Instead of opening Revolver:
	say "The weapon is ready to fire, that's all you need to know.";

A Einberufungsbescheid is a thing. The printed name is "draft notice". 
The description is "A draft notice for Thomas Marshall, over five years old according to the date. An important document that you always carry with you, as it identifies you as a former member of the army. As a welcome side effect, you can also look up your name if you've had a rough night."
Understand "draft", "draft notice", "notice", "papers", "letter", "note" as Einberufungsbescheid.
A Einberufungsbescheid is wertvoll.
Instead of taking the Einberufungsbescheid when Einberufungsbescheid is in Tasche:
	say "You'd rather leave the papers in your bag.".

A Zeichnung is a thing. The Zeichnung is fixed in place. The printed name is "drawing".
The description is "A folded charcoal drawing, already slightly brittle at the edges. It shows Claire, your wife.[paragraph break]You miss her beyond words."
Understand "drawing", "image", "picture" as Zeichnung.
A Zeichnung is wertvoll.

Geld is a thing. The printed name of Geld is "money". 
Geld is fixed in place. 
The indefinite article of Geld is "some".
The description of the Geld is "About [Geldbetrag in words] dollars.".
Understand "money", "dollar", "cash" as Geld. 

Geld is wertvoll.
Instead of taking Geld: say "You'd rather leave the money in [the Tasche]."

Geldbetrag is a number that varies. Geldbetrag is 12.

A Bett is scenery in r-Zimmer. The printed name is "bed". 
The description is "A sparse bed with a stained thin [Matratze] on it."
Understand "bed", "corner" as Bett.
Instead of using Bett, say "You're not tired, just exhausted.".
Instead of looking under bett, say "Nothing but dust.".

A Fenster is scenery in r-Zimmer. The printed name is "window". 
The description is "Pale light shines through the dusty glass pane of the window. Outside, you think you can make out a [Windrad-Zimmer]." 
Understand "window", "window pane" as Fenster.
Instead of using Fenster, try opening Fenster.
Instead of opening Fenster, say "It's nailed shut. Maybe some guests didn't pay their bill and left this way in the past.".

A Wand is scenery in r-Zimmer. The printed name is "wall". 
The description is "The walls and ceiling may once have been white, but now the gray and cracked plaster is only held up by good will."
Understand "wall", "ceiling", "plaster" as Wand.

A Boden is scenery in r-Zimmer. The printed name is "floor". 
The description is "This floor has not seen a broom or even water for a long time. In many places, the light from the room below shines through the floorboards."
Understand "floor", "floorboards", "boards" as Boden.

A Windrad-Zimmer is scenery in r-Zimmer. The printed name is "wind pump". 
The description is "A large metal windmill turns rhythmically, squeaking in the wind. The noise is hard to bear right now.". 
Understand "wind pump", "windpump", "wind mill", "windmill", "pump", "mill" as Windrad-Zimmer.

A Matratze is scenery in r-Zimmer. The printed name is "mattress". 
The description is "Mattress is a pretty big word for these two roughly sewn-together lengths of fabric. Individual straws push through the seams and holes in the fabric everywhere.".
Understand "mattress", "holes", "fabric", "straw", "straws" as Matratze.
Instead of looking under Matratze, say "You'd rather not.".

Instead of listening to r-Zimmer:
	say "[italic type]squeeeak ...[line break]squeeeak ...[line break]squeeeeeak ...[roman type][line break]".

Instead of listening to r-Windrad:
	say "[italic type]squeeeak ...[line break]squeeeak ...[line break]squeeeeeak ...[roman type][line break]".

Test 1 with "l / x window / x windpump / x wall / x floor / x bed / x mattress / x door / x nightstand / x bag / open bag / x revolver / x notice / x money / x ammo / take revolver / open gun / knock on window"

[Nur das Nötigste und raus]
Test 1b with "get bag / open bag / down / out".

Section 2 - Saloon

r-Saloon is a room. The printed name is "Saloon".
The description is "[if unvisited]You shuffle down the stairs, massaging your aching left shoulder.[paragraph break][end if]The saloon consists of a few round [Tische] with chairs and a small [Buehne]. Next to it, a [Treppe] leads up to your room. On the other side is a long [Tresen]. Two massive [Balken] run under the ceiling. The [Schwingtuer] to the north lead outside.[paragraph break][A Barfrau] is behind the counter, [Barfrau-action].[if unvisited] She gives you a slightly amused look.[end if][if Keks is on the Tresen and Keks is not genommen and Ladentuer is unlocked] She looks up.[paragraph break]'Don't you want your cookie?'[end if]".
Understand "Saloon" as r-Saloon.
The Geruch of r-Saloon is "It smells of spilt beer and old cigarettes."

Instead of going outside in r-Saloon, try going north.

Instead of going down in r-Saloon when player is on Stuhl, try climbing the Stuhl.

Before going north in r-Saloon:
	if player does not have Tasche:
		say "You've still got your stuff upstairs. Besides, you could do with a coffee first." instead;

To say Barfrau-action: say "[one of]polishing glasses with a moderately clean-looking cloth[or]wiping the counter with a bored expression[or]sorting the drinks[or]rolling a cigarette[or]scratching her chin[or]blowing her nose into her kitchen towel[or]cleaning the sink[or]taking a drag on her cigarette[at random]"

Some Tische is scenery in r-Saloon. The printed name is "tables".
The description is "A few round wooden tables are scattered randomly around the room.[if r-Hauptstraße is unvisited] Two of the tables have been tipped over.[end if]".
Understand "table", "tables" as Tische.

Instead of doing anything except examining with Tische:
	say "I believe [the Barfrau] will take care of that on her own.".

A Stuhl is a supporter in r-Saloon. The printed name is "chair".
Stuhl is pushable between rooms.
Stuhl can be moved or unmoved. Stuhl is unmoved.

The description is "Inconspicuous wooden chairs and stools, some patched together with thin boards.[if r-Hauptstraße is unvisited][desc-unvisited][run paragraph on][end if]".
Understand "chair", "stool", "chairs", "stools" as Stuhl.

Instead of taking the Stuhl:
	say "The chairs are too bulky to take away. You can probably move them around though."

Instead of pushing or pulling the Stuhl:
	say "[if Stuhl is unmoved]You place one of the chairs under the ceiling beam with the lantern[else]The chair is in a good position now[end if].";
	now Stuhl is moved.

Instead of using or entering or climbing the Stuhl:
	If Stuhl is unmoved:
		say "The way the chairs are standing right now, you see no reason to.";
	else if player is not on Stuhl:
		say "You climb onto the chair under the beam.";
		now player is on Stuhl;
	else if player is on Stuhl:
		say "You get down from the chair.";
		now player is in r-Saloon.

To say desc-unvisited: say " A few of them lie shattered next to the entrance.[paragraph break]'I wanted to let you sleep in before I clean up the mess here', [if Barfrau is proper-named]Ella[else]the woman[end if] says."

A Buehne is a supporter in r-Saloon. The printed name is "stage".
The description is "An unadorned wooden platform that has often served as the backdrop for mediocre dance routines and many a brawl.".
Understand "stage", "platform" as Buehne.
Instead of climbing Buehne, try entering Buehne.
Instead of entering Buehne, say "You do know some hilarious jokes, but the audience is lacking a bit. Besides, you've got more important things to take care of.".

A Treppe is scenery in r-Saloon. The printed name is "staircase".
The description is "The staircase leads up to your rented room and other rooms that you are not allowed to enter.".
Understand "staircase", "stairs" as Treppe.
Instead of doing anything except examining with the Treppe:
	say "You can just go upstairs.".

A Tresen is a supporter in r-Saloon. The printed name is "counter".
The description is "The bar counter has a few dark spots and minor carving marks from bored guests, but overall, it looks quite clean.".
Understand "counter", "bar" as Tresen.
Instead of entering Tresen, say "Ella would not approve. Maybe use something else.".

Some Barstuff is scenery in r-Saloon. The printed name is "bar accessories". Barstuff is unwichtig.
Understand "sink", "drinks", "glasses", "towel" as Barstuff.

Some Schnitzereien are a thing in r-Saloon. The printed name is "carvings". It is unwichtig.
Understand "carvings", "carving", "marks" as Schnitzereien.

Some Balken is scenery in r-Saloon. The printed name is "beams".
The description is "Massive wooden beams support the ceiling of the large room. A long nail is hammered into one of the beams[if player does not have Lampe] with a kerosene lamp dangling from it[end if].".
Understand "beam", "beams", "ceiling", "wooden beam", "wooden beams" as Balken.
Instead of climbing Balken, say "They're way too high.".

A Nagel is a thing in r-Saloon. The printed name is "nail".
The description is "A long, rusty nail, driven deep into one of the ceiling beams. It will probably stay there until the saloon collapses one day.".
Understand "nail", "long nail", "rusty nail" as Nagel.
Instead of doing anything except examining with the Nagel:
	say "You can't reach it, and you don't really want it anyway.".

A Lampe is a thing in r-Saloon. The printed name is "lamp".
Lampe can be lit. Lampe is not lit.
Lampe is sperrig.
Lampe can be allowed-to-take. Lampe is not allowed-to-take.
The description is "A large[if player has Lampe], filled[end if] kerosene lamp with a handle. It is [if Lampe is lit]lit[else]not lit[end if].".
Understand "lamp", "kerosene lamp", "lantern", "kerosene lantern", "handle" as Lampe.

Instead of taking the Lampe:
	if player has Lampe:
		say "You already have it!";
	else if Stuhl is unmoved:
		say "You can't quite reach it like this, the lamp is hanging a little too high.";
	else if Lampe is not allowed-to-take:
		say "[The Barfrau] raises an eyebrow. 'What do you think you're doing there?'";
	else if player is not on Stuhl:
		say "If you get on the chair, you can probably reach the lamp now.";
	else:
		say "You take the lamp off the nail.";
		now player has Lampe;
		now pg-Barfrau-anzünden is active;
		now pg-Bill-anzünden is active;
		now pg-Bill-Laterne is inactive.

Instead of switching on the Lampe, try burning the Lampe.
Instead of switching off the Lampe:
	say "You prefer to leave it burning. It's so nice and cozy.".

Instead of burning the Streichhölzer:
	say "You light a match. It flares up brightly for a moment and quickly goes out again.[paragraph break]Perhaps you should use the matches to actually light something instead.";

Instead of burning the Lampe:
	if player does not have Lampe:
		say "You don't have a lamp.";
	else if player does not have Streichhölzer:
		say "You have nothing to light the lamp.";
	else if Lampe is lit:
		say "The lamp is already burning.";
	else:
		say "[desc-Lampe-an]";
		now Lampe is lit;

To say desc-Lampe-an:
	say "You take one of the matches and swipe it over your ragged thumbnail, then gently holding it to the wick of the lamp. A cozy light spreads out.[line break]";

A Kaffeetasse is a thing. The printed name is "coffee cup".
The Kaffeetasse is fixed in place. The Kaffeetasse can be full, 70full, 30full, or empty. It is full.
The description is "[if Kaffeetasse is empty]A slightly battered coffee cup. It is empty.[else]A slightly battered coffee cup with strong black coffee in it.".
Understand "cup", "mug", "coffee", "coffee cup", "coffee mug" as Kaffeetasse.

Instead of taking Kaffeetasse: 
	say "[The Barfrau] raises an eyebrow. 'The cup stays here!'".

Instead of drinking Kaffeetasse: 
	if Kaffeetasse is full: 
		now the Kaffeetasse is 70full; 
		say "You take a small sip. Not bad.";
	else if Kaffeetasse is 70full: 
		now the Kaffeetasse is 30full; 
		say "You take another sip. You feel much better already.";
	else if Kaffeetasse is 30full: 
		now the Kaffeetasse is empty; 
		say "You finish your coffee.";
	else if Kaffeetasse is empty: 
		now the Kaffeetasse is empty; 
		say "The cup is empty.".

A Keks is a thing. The printed name is "cookie".
The description is "It's a cookie.".
Understand "cookie" as Keks.
A Keks can be genommen. Keks is not genommen.
Instead of eating the Keks:
	say "You'd better save that for later.".
Instead of taking the Keks:
	if player has Keks:
		say "You already got it!";
	else:
		say "You wrap the cookie carefully.";
	now Keks is genommen;
	now player has the keks;
	stop the action.

Some Schwingtuer is a door in r-Saloon. The printed name is "swing doors".
The description is "Half-height swing doors consisting of two wooden panels.".
Understand "door", "doors", "swing door", "swing doors", "saloon door", "saloon doors" as Schwingtuer.
The schwingtuer is open.
The Schwingtuer is north of r-Saloon and south of r-Hauptstraße.
Instead of opening or closing the Schwingtuer:
	say "It's a swinging door, you can just walk through it."

A Barfrau is a woman in r-Saloon. The printed name is "woman".
The description of Barfrau is "[if Barfrau is not proper-named]The woman behind the counter is Ella, you've first met her years before. [end if]She is in her late forties, a corpulent, attractive woman with laugh lines and calloused hands. She has a dark red cloth scarf tied around her forehead and is [Barfrau-action].".
Understand "woman", "Ella", "bar woman", "girl" as Barfrau.
Barfrau can be examined.

The Barfrau-Aussehen is scenery in r-Saloon. The printed name is "Ellas attire". The Barfrau-Aussehen is proper-named. It is unwichtig.
Understand "cloth", "scarf", "laugh lines", "hands", "forehead", "kitchen cloth", "cigarette" as Barfrau-Aussehen.
Instead of doing anything except examining with Barfrau-Aussehen:
	say "Better leave [the Barfrau] alone.".

After examining the Barfrau for the first time:
	now the printed name of the Barfrau is "Ella";
	now Barfrau is examined;
	now the Barfrau is proper-named.

Instead of using something on Barfrau:
	say "Just talk to [the Barfrau]. If you think you can show someone something, you will be able to talk about it.".

After telling the Barfrau about:
	if player is on Stuhl:
		say "If you're not about to give a speech, you might want to get off the chair first.";
	else:
		populate choice lists for pg-Barfrau-menu;
		if assigned index is greater than 1:
			now assigned index is 0;
			clear choices;
			say "What would you like to say to [the Barfrau]?";
			switch to cyoa at pg-Barfrau-menu;
		else:
			now assigned index is 0;
			clear choices;
			say "You have nothing to say to [the Barfrau] right now.";

pg-Barfrau-menu is a page.

pg-Barfrau-ella is a page. 
"[if Barfrau is not examined]The woman behind the counter is Ella, you first met years before.[paragraph break][end if]'I[']m doing quite well, thanks Tom. Nothing upsets me easily here anymore, at least not a little bar brawl.'".
The cdesc is "'How are you doing?'" It is for pg-Barfrau-menu. It is a dead-end. It is one-off.
A page-toggle rule for pg-Barfrau-ella:
	now the printed name of the Barfrau is "Ella";
	now the Barfrau is proper-named;
	now pg-Barfrau-schlaegerei is active.

pg-Barfrau-saloon is a page. 
"'Things got pretty rough here yesterday when you were already upstairs. I'll clean it all up later,' says [the Barfrau]. 'You look pretty exhausted, do you want a coffee? I brewed one as soon as I heard you get up.'"
The cdesc is "'Looks wild in here.'" It is for pg-Barfrau-menu. It is a dead-end. It is one-off.
A page-toggle rule for pg-Barfrau-saloon: 
	now pg-Barfrau-kaffee is active.

pg-Barfrau-kaffee is a page. 
"[if player has Tasche][The Barfrau] turns around and pours a deep black steaming broth from a small tin pot into a cup and places it on the counter in front of you.

'Enjoy your coffee, that'll be a quarter. I'm afraid I'm out of sugar, but I still have a cookie.'

[The Barfrau] puts a cookie next to the cup. You put the money down, stick your nose deep into the cup and take a deep breath. Wonderful.[else]'Did you leave your stuff upstairs? You know, no liability and all that.[page-told]'[end if]".
The cdesc is "'[if player has Tasche]A coffee please.[else]I don't have any money on me I'm afraid.[end if]'". 
It is for pg-Barfrau-menu. It is a dead-end. It is inactive.

A page-toggle rule for pg-Barfrau-Kaffee: 
	if player has Tasche:
		now The Kaffeetasse is on the Tresen;
		now The Keks is on the Tresen;
		now pg-Barfrau-Kaffee is inactive.

pg-Barfrau-schlaegerei is a page. 
"'No idea who started it this time. The [name-Brüder] were drinking heavily again and waving dollar bills around, but of course they didn't spend it on anyone but themselves.'

She shrugs and gives you a little smile. 'I suppose some people didn't like that.'"
The cdesc is "'There was a fight?'" It is for pg-Barfrau-menu. It is a dead-end. It is inactive.
A page-toggle rule for pg-Barfrau-schlaegerei: 
	now pg-Barfrau-name-Brüder is active;
	now pg-Barfrau-schlaegerei is inactive;
		now the printed name of the Barfrau is "Ella";
	now the Barfrau is proper-named.


pg-Barfrau-name-Brüder is a page. 
"'Oh, you don't even know the [name-Brüder]? Then they must have turned up when you were already out of town back then. Their names are Calvin and Bob, they put the old mine west of here back into operation and they actually found something again it seems.'

[The Barfrau] pauses briefly and takes a long drag on her cigarette.

'In any case, they obviously have enough money to get drunk here on a regular basis. That's fine by me.'"
The cdesc is "'Mifflin? Doesn't ring a bell.'" It is for pg-Barfrau-menu. It is a dead-end. It is a one-off. It is inactive.

pg-Barfrau-lucy is a page.
"'Lucy? Why?'

You briefly tell [the Barfrau] what happened.

'Bloody hell. I last saw Lucy a few days ago, but Michael was here yesterday. I saw him whispering with a few people, then I don't remember. He probably left before the brawl, that's not his thing.'"
The cdesc is "'Have you seen Lucy?'" It is for pg-Barfrau-menu. It is a dead-end. It is a one-off. It is inactive.

pg-Barfrau-Taschentuch is a page.
"You show the handkerchief with the monogram to [the Barfrau].

'Yes, that must be hers. Where did you find this?'"
The cdesc is "'I think I've found Lucy's hankie.'" It is for pg-Barfrau-menu. It is a dead-end. It is a one-off. It is inactive.
A page-toggle rule for pg-Barfrau-Taschentuch: 
	now pg-Barfrau-mine is active.

pg-Barfrau-mine is a page.
"[if Barfrau is proper-named]Ella[']s[else]Her[end if] face darkens.

'I don't like all this at all. She would never go into the mine voluntarily, she's been afraid of it ever since she was a child.'

She takes a nervous drag on her cigarette and looks you firmly in the eye.

'Tom, you have to go in there. I think the entrance is too well guarded. There used to be a tunnel to the south, but it was buried by a pile of rubble a few years ago.'"
The cdesc is "'Close to the mine entrance west of here.'" It is for pg-Barfrau-menu. It is a dead-end. It is a one-off. It is inactive.

pg-Barfrau-Laterne is a page.
"[if Brocken is entfernt]You briefly tell [the Barfrau] about the tunnel entrance that you have uncovered. She smiles and nods.[paragraph break][end if]'You're welcome to take the lamp with you, but I need it back by tonight!'"
The cdesc is "'May I borrow that lamp?'" It is for pg-Barfrau-menu. It is a dead-end. It is a one-off. It is inactive.
A page-toggle rule for pg-Barfrau-Laterne: 
	now Lampe is allowed-to-take.

pg-Barfrau-anzünden is a page.
"[The Barfrau] frowns. 'I'm almost out of matches and it's hard to smoke without fire.' 

She blows an impressive cloud of smoke over you and points to the door. 'I'm sure Bill still has some, feel free to bring me some as well when you return the lamp.'"
The cdesc is "'Do you have anything to light the lamp?'" It is for pg-Barfrau-menu. It is a dead-end. It is a one-off. It is inactive.

pg-Barfrau-Abgrund is a page.
"[The Barfrau] shakes her head. 'Nah Tom, ropes are forbidden here since the rodeo incident the other day.'

She grins mischievously. 'Why don[']t you ask ol['] Billy?'"
The cdesc is "'I have to climb down the mine. Do you have a rope or something?'". It is for pg-Barfrau-menu. It is a dead-end. It is a one-off. It is inactive.

pg-Barfrau-end is a page. 
The cdesc is "End conversation". It is for pg-Barfrau-menu. It is an end-page.
A page-toggle rule for pg-Barfrau-end:
	if pg-Barfrau-schlaegerei is inactive:
		now the printed name of the Barfrau is "Ella";
		now the Barfrau is proper-named.

Test 2 with "d / x stairs / x stage / x chairs / x woman / l / n / s / x chairs".
Test 2b with "out / talk to woman / 1 / 1 / 1 / 2 / 2 / 2 / up / take bag / open bag / down / talk to woman / 1 / 1 / x counter / take cookie / eat cookie / drink from cup / drink cup".

Section 3 - Main Street

r-Hauptstraße is a room.
The printed name is "Main Street".
The description is "[if unvisited]You step through the swinging door in front of the saloon. A small [Vordach] protects you from the scorching [Sonne]. An unpleasantly hot wind slowly carries a thorny tumbleweed out of the city. There is not a soul to be seen.[paragraph break][end if]The wide, dusty road runs from east to west. [desc-gebaeude] The saloon lies to the south.[random-event]".
[It is north from r-Saloon.] It is outside of r-Saloon.
Understand "main street", "street", "main", "road", "place" as r-Hauptstraße.
The Geruch of r-Hauptstraße is "Many unidentifiable odors mingle in the hot and dusty morning air - most of them not very pleasant.".

To say desc-gebaeude:
	if Gebaeude is not examined:
		say "Three similar-looking wooden buildings are located on the opposite side of the street to the north.[run paragraph on]";
	else:
		say "The sheriff's office is to the northwest, the general store lies to the north and the barber shop to the northeast.[run paragraph on]".

Gebaeude is scenery in r-Hauptstraße. Gebaeude can be examined. Gebaeude is not examined.
The printed name is "buildings".
The description is "The building in the northwest is apparently the sheriff's office. To the north is a general store and next to it in the northeast is a small barber store.".
Understand "building", "buildings" as Gebaeude.

After examining Gebaeude:
	now Gebaeude is examined.

A Vordach is scenery in r-Hauptstraße. The printed name is "canopy".
The Vordach is unwichtig.
Understand "canopy" as Vordach.

A Sonne is scenery in r-Hauptstraße. The printed name is "sun".
The description is "Looking at the sun isn't particularly smart under normal circumstances, but even less so with your grumpy head.".
Understand "sun" as Sonne.
Instead of taking Sonne:
	say "You take the sun and put it in your pocket.[paragraph break].[line break].[line break].[paragraph break]It's getting a bit hot. You quickly put the sun back in its place."

A Steppenlaeufer is scenery in r-Hauptstraße. The printed name is "tumbleweed".
The description is "The tumbleweed is already out of sight. Others will come and take its place.".
Understand "tumbleweed", "weed", "bush" as Steppenlaeufer.

A Buero is scenery in r-Hauptstraße. The printed name is "office". 
"Sheriff Dunder's office is also his home. A cat lies lazily in the slowly diminishing shade next to the house."
Understand "office", "sheriff" as Buero.
Instead	of opening Buero when Sherifftuer is locked:
	say "The front door to the sheriff's office is locked.".

A Gemischtwarenladen is scenery in r-Hauptstraße. The printed name is "general store".
"A sign saying 'Bill's Goods & More' is dangling over the general store. You wonder what the more than goods could be."
Understand "general store", "general", "store" as Gemischtwarenladen.

A Barbierladen is scenery in r-Hauptstraße. "The barber shop is marked by a small red, white and blue pole next to the door."
The printed name is "Barber shop".
Understand "barber shop", "barber", "shop" as Barbierladen.

A Hauptstraße-Fenster is scenery in r-Hauptstraße. The printed name is "window". The Hauptstraße-Fenster is unwichtig. Understand "window" as Hauptstraße-Fenster.

A Saeule is scenery in r-Hauptstraße. "When the wind blows strongly, it even turns a little."
The printed name is "pole".
Understand "pole", "pillar" as Saeule.

A Katze is an animal in r-Hauptstraße. "She doesn't even look at you."
The printed name is "cat".
Understand "cat" as Katze.
Instead of telling the Katze about, try pushing the Katze.
Instead of kissing the Katze, try pushing the Katze.
Instead of pushing the Katze, say "'Meow!'[line break]".

A Geier is verschwunden and scenery in r-Hauptstraße. The printed name is "vulture".
Understand "vulture", "bird" as Geier.

A Decke is verschwunden and scenery in r-Hauptstraße. The printed name is "blanket".
Understand "blanket" as Decke.

A Staubwolke is verschwunden and scenery in r-Hauptstraße. The printed name is "dust cloud".
Understand "cloud", "dust cloud" as Staubwolke.

Test 3 with "d / out / x buildings / n / s / x building / x sheriff / x store / x barber / x pole / x cat".

Test 3b with "p bag / d / out / x buildings / x sheriff / x store / x barber / x pole / x cat / x vulture / x canopy".

Section 4 - Sheriff

r-Sheriff is a room.
The printed name is "Sheriff's Office".
The description is "[desc-r-Sheriff]".
The Geruch of r-Sheriff is "It smells slightly musty and of various excrements in the bunks. Not a place where you would want to stay for long.".

r-Hauptstraße is outside of r-Sheriff.
Understand "sheriff's office", "sheriffs office", "office" as r-Sheriff.

Instead of going south in r-Sheriff, try going southeast.

Instead of going to r-Sheriff when Sherifftuer is locked:
	say "The front door to the sheriff's office is locked.".

To say desc-r-Sheriff:
	if Michael is in r-Sheriff:
		say "You're lying on one of the plank beds in the sheriff's office. Michael and Lucy are sitting in the corner, the young man wearing a slightly bloody bandage around his head. Sheriff Dunder is sitting behind his desk.[run paragraph on]";
	else:
		say "This is Sheriff Dunder's office. [if player is eingesperrt]You are standing in front of the two plank beds that are attached to one of the walls[else]Two plank beds are attached to the wall[end if].[paragraph break]On the opposite side is a massive [Schreibtisch][if player is not eingesperrt] with [Sheriff] sitting behind it. He has pulled his hat half over his face and seems to be dozing off[end if]. A [Durchgang] apparently leads deeper into the [Haus]. The [Sherifftuer] in the southeast leads outside.[run paragraph on]".

A Sherifftuer is a door in r-Sheriff. The printed name is "door to the sheriff's office".
The description is "The front door to Dunder's office.".
The Sherifftuer is southeast of r-Sheriff and northwest of r-Hauptstraße.
Understand "door", "front door", "office door" as Sherifftuer.
Sherifftuer is locked.

Some Pritschen is scenery in r-sheriff. The printed name is "plank beds".
The description is "Simple wooden platforms to sit or lie on. They have certainly seen a few bandits and/or booze chokes and smell disgusting.".
Understand "plank bed", "plank beds", "bed", "beds" as Pritschen.
The Geruch of Pritschen is "It smells of various unapetizing excrements."
Instead of entering Pritschen:
	say "You don't feel like resting any longer. Apart from that, the beds are pretty disgusting."

Some Waende is scenery in r-sheriff. The printed name is "walls".
Waende are unwichtig.
Understand "wall", "walls" as Waende.

A Schreibtisch is a supporter in r-sheriff. The printed name is "desk".
Schreibtisch is fixed in place.
The description is "A mighty desk made of dark wood.".
Understand "desk", "table" as Schreibtisch.

A Durchgang is scenery in r-sheriff. The printed name is "passageway".
The description is "A low passageway that presumably leads to holding cells and the sheriff's private rooms. Dunder won't let you go there, and you don't need to see anything back there anyway.".
Understand "passageway", "passage" as Durchgang.
Instead of doing anything except examining with Durchgang, try examining Durchgang.

A Haus is scenery in r-sheriff. The printed name is "house".
The description is "You don't think you'll see any more of the house. You certainly don't want to.".
Understand "house" as Haus.

Instead of going south from r-sheriff, try going outside.
Instead of going southeast from r-sheriff, try going outside.

Before going outside from r-sheriff:
	 if Michael is in r-Sheriff and player is eingesperrt:
		say "You feel dizzy as you try to get up from the plank bed. The sheriff rushes over and puts a friendly but firm hand on your shoulder.
		
		'Slow down, boy. I think there are still a few things to discuss here.'" instead;
	else if the player is eingesperrt:
		say "The sheriff growls indignantly. 'Stay here, boy! First you tell me [desc-passiert].'" instead;
	else if Tasche is on Schreibtisch:
		say "The sheriff growls indignantly. 'Take your stuff with you, boy.'" instead;
	
Before doing anything with Tasche when player is in r-sheriff:
	if the player is eingesperrt:
		say "'You might get your stuff back later. First you tell me [desc-passiert].'" instead.

Instead of doing anything with Einberufungsbescheid when player is in r-sheriff:
	if Michael is in r-Sheriff:
		say "'I'll give you your papers as soon as you've told me everything.'";
	else if the player is eingesperrt:
		say "'You might get your papers back later. First you tell me [desc-passiert].'";
	else:
		say "'Your papers will stay here until everything is sorted out.'";

To say desc-passiert:
	say "[one of]what happened here[or]what's going on here[at random]".

The Sheriff is a man in r-sheriff. The printed name is "Sheriff Dunder". 
The description is "Sheriff Dunder is a lean man in his late fifties with piercing green eyes and a white [Schnauzbart]. Deep wrinkles run across his deep brown [Gesicht]. A dull brass [Stern] adorns the vest of his otherwise unremarkable clothing.".
The Sheriff is proper-named.
Understand "sheriff", "sherrif", "Dunder", "man" as Sheriff.

A Schnauzbart is scenery in r-sheriff. The printed name is "moustache".
The Schnauzbart is unwichtig.
Understand "moustache", "beard" as Schnauzbart.

A Gesicht is scenery in r-sheriff. The printed name is "face".
The Gesicht is unwichtig.
Understand "face", "wrinkles" as Gesicht.

A Stern is scenery in r-sheriff. The printed name is "star".
The description is "A simple sheriff's star as worn by sheriffs all over the country.".
Understand "star" as Stern.

A Kleidung-Sheriff is scenery in r-sheriff. The printed name is "clothing".
The description is "Practical clothing like almost everyone wears here."
Understand "clothing", "clothes" as Kleidung-Sheriff.

After telling the Sheriff about:
	if Michael is in r-Sheriff:
		populate choice lists for pg-Ende-Menu;
		if assigned index is greater than 1:
			now assigned index is 0;
			clear choices;
			say "What would you like to say?";
			switch to cyoa at pg-Ende-Menu;
		else:
			now assigned index is 0;
			clear choices;
			say "You don't have anything to say right now.";
	else:
		populate choice lists for pg-Sheriff-menu;
		if assigned index is greater than 1:
			now assigned index is 0;
			clear choices;
			say "What would you like to say to [the Sheriff]?";
			switch to cyoa at pg-Sheriff-menu;
		else:
			now assigned index is 0;
			clear choices;
			say "You don't have anything to say to [the Sheriff] right now.";

pg-Sheriff-menu is a page.

pg-Sheriff-page1 is a page. 
"'What happened? That's what I wanted to know from you, boy.'

Sheriff Dunder takes a step back and leans against his desk.

'Deputy Miller found you on the ranch with your face in the dirt and blood on your head. Didn't want you to die there in the sweltering heat, so he dragged you in here.'

Yeah right, the ranch, [the Lucy]... it's all starting to come back to you."
The cdesc is "'What happened? How did I get here?'".
It is for pg-Sheriff-menu. It is a dead-end. It is one-off.
A page-toggle rule for pg-Sheriff-page1: now pg-Sheriff-page2 is active.

pg-Sheriff-page2 is a page. 
"Dunder frowns. 'Miller says the ranch was empty, no Michael, no Lucy. What[']s going on there, boy?'

You briefly recount your conversation with [the Lucy]. The sheriff eyes you critically and finally sighs.

'Lucy is the daughter of Mayor [name-Bürgermeister]. If something happened to her, you're not the only one with a problem.'"
The cdesc is "'What about [the Lucy]?'".
It is for pg-Sheriff-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Sheriff-page2: 
	now pg-Sheriff-problem is active.

pg-Sheriff-problem is a page. 
"The sheriff approaches you slowly and pushes his face in front of yours until the tips of your noses are almost touching. His breath stinks foul and his eyes glare balefully at you.

'You've been here one day and already the mayor's daughter has disappeared. I have no idea what exactly you have to do with it and whether your story is true, but I strongly advise you to find out where she is.'"
The cdesc is "'Why is this my problem now?'".
It is for pg-Sheriff-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Sheriff-problem: 
	now pg-Sheriff-infos is active;
	now pg-Sheriff-gehen is active.

pg-Sheriff-infos is a page. 
"'She's the daughter of Mayor [name-Bürgermeister], his stepdaughter, to be precise. She got engaged to that ranch boy, doesn't suit [name-Bürgermeister] at all.'

Dunder pulls one up noisily and spits under the plank bed.

'Her mother must have died a year or so ago. Didn't know her though, only been here a few months myself.'"
The cdesc is "'Can you tell me something about Lucy?'".
It is for pg-Sheriff-menu. It is a dead-end. It is one-off. It is inactive.

pg-Sheriff-gehen is a page.
"The sheriff turns away from you and nods reluctantly. 'Your papers stay here and you're not leaving town. The coach is already through today anyway and you won't be able to afford a horse.'

Dunder comes closer again and looks at you penetratingly.

'[if Tasche is on Schreibtisch]Your stuff is on the table. [end if]We'll keep an eye on you boy. Don't do anything stupid.'"
The cdesc is "'May I leave now?'".
It is for pg-Sheriff-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Sheriff-gehen: 
	now player is not eingesperrt;
		now Sherifftuer is unlocked;
		now Ladentuer is unlocked;
		now r-Barbier is unlocked;
		now Lucy is in r-Gewoelbe;
		now Lucy is eingesperrt;
		now the Taschentuch is in r-Mine;		
		now pg-Barfrau-lucy is active.

pg-Sheriff-Taschentuch is a page.
"'Exciting story, boy.' He looks at you disdainfully.

'Come back when you've found her and try not to get on my nerves any more.'"
The cdesc is "'I think I've found Lucy's handkerchief!'" It is for pg-Sheriff-menu. It is one-off. It is a dead-end. It is inactive.

pg-Sheriff-end is a page.
The cdesc is "End conversation". It is for pg-Sheriff-menu. It is an end-page.

[Ende]
Instead of telling Michael about when Michael is in r-Sheriff:
	try telling Sheriff about "dummy".
Instead of telling Lucy about when Lucy is in r-Sheriff:
	try telling Sheriff about "dummy".

pg-Ende-Menu is a page.

pg-Ende-Passiert is a page. 
"Dunder stands up and puts a hand on Lucy's shoulder.

'Well, as far as I've understood these two correctly, you saved their lives after a cart of nitro barrels rolled loose in the cave and exploded.'

He blinks at you slyly. 'What a coincidence, eh?'"
The cdesc is "'What happened?'" It is for pg-Ende-Menu. It is a dead-end. It is one-off.
A page-toggle rule for pg-Ende-Passiert: 
	now pg-Ende-Kopf is active;
	now pg-Ende-Höhle is active;

pg-Ende-Kopf is a page.
"Michael grabs his head and adjusts his bandage a little.

'Oh, it's all right now. It must have bled a lot when they found us, but Marten looked at it and bandaged it up straight away.'"
The cdesc is "'How's your head, Michael?'" It is for pg-Ende-Menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Ende-Kopf: 
	now pg-Ende-Michael is active;

pg-Ende-Michael is a page.
"'I'd heard that things weren't quite right at the mine and that Thompson had a hand in it. So, when Cal and Bob turned up at Ella's that evening and things were getting heated, I thought it would be a good time to check it out.'

Michael notices Lucy's reproachful look and raises his arms apologetically. 'I wanted to tell you at first, but it could have just been empty talk. After all, it's about your fa-- um, stepfather.'

Lucy takes a deep breath, and he continues speaking quickly. 'Anyway, unfortunately the mine wasn't as deserted as I thought, I was discovered and locked up.'"
The cdesc is "'How did you end up there anyway?'" It is for pg-Ende-Menu. It is a dead-end. It is one-off. It is inactive.

pg-Ende-Höhle is a page. 
"Lucy stands up hastily. Her lower lip is trembling.

'Those crooks made some kind of filth for folks to smoke! And that's after what happened to my mother!'

She struggles to keep her composure and turns to Michael, who takes her in his arms."
The cdesc is "'What were they doing in that cave?'" It is for pg-Ende-Menu. It is a dead-end. It is one-off.
A page-toggle rule for pg-Ende-Höhle: now pg-Ende-Mutter is active.

pg-Ende-Mutter is a page. 
"Michael turns to you. 'Lucy's mother must have smoked opium and became very ill at some point. Unfortunately, she passed away last year.'

Lucy cries. 'I never understood exactly what was wrong with her. That asshole! My real father would never have let that happen!'"
The cdesc is "'What happened to your mother?'" It is for pg-Ende-Menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Ende-Mutter: now pg-Ende-Thompson is active.

pg-Ende-Thompson is a page. 
"Dunder sighs and raises his hands.

'Unfortunately, we don't have him yet. Deputy Miller was the first one at the mine entrance after the explosion. A few of the bandits must have made it out coughing and crawling. Marten took care of them.'

He sits down next to Lucy. 'Most of the others weren't so lucky. Cal Mifflin is dead, we've got his brother Bob in the back here in a cell. Miller sure had to climb over a few bodies before he found you back there.'

Stepping over dead bodies... The terrible memories of the events at Red Rock briefly drill a path into your consciousness, and a cold shiver runs down your spine."
The cdesc is "'Where is Thompson?'" It is for pg-Ende-Menu. It is a dead-end. It is one-off.
A page-toggle rule for pg-Ende-Thompson: 
	now pg-Ende-Drogen is active.

pg-Ende-Drogen is a page. 
"'We assume that they produced Chandu.'

The sheriff looks at your questioning face and laughs. 'Yeah, that's about how I looked at first, but Marten explained it to me. You know that opium stuff those Chinese fellas smoke? The governor still tolerates it, but it's no longer welcome here. It makes people sick.'

He pulls a flask out of his pocket, takes a sip and holds it out to you. You take it gratefully.

'Well, they it looks like they brought opium down into that vault, then did all sorts of things with it and ended up with these little balls. They're probably easier to sell, and Marten thinks they're stretched with plant fibers or something, hence all the secrecy.'"
The cdesc is "'What exactly did they produce?'" It is for pg-Ende-Menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Ende-Drogen: now pg-Ende-Aufwand is active.

pg-Ende-Aufwand is a page. 
"Dunder nods. 'Well, that stuff probably spoils pretty quickly when it's no longer pure, and outside in the fresh air the production doesn't seem to work. I don't know. I guess it was sold over in the city as quickly as possible.'

He glances at the door. 'When Bob wakes up and we catch Thompson, maybe there will be more answers.'

Answers... You suddenly remember what brought you to this place and take the drawing out of your vest that you showed to many people in town the day before."
The cdesc is "'What an effort!'" It is for pg-Ende-Menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Ende-Aufwand: 
	now pg-Ende-Frau is active.

pg-Ende-Frau is a page. 
"You show Michael the drawing. He studies it carefully and smiles.

'Of course! This woman arrived at the ranch late the other night. Her horse almost collapsed under her, and she looked like she could really do with a good night's sleep.'

He returns the drawing. 'I offered her a room at Ella's, but she didn't want one. So I let her sleep in the hay and looked after her horse. When I went to check on her the next morning, she and her horse had disappeared.'"
The cdesc is "'Michael, do you know this woman?'" It is for pg-Ende-Menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Ende-Frau: 
	now pg-Ende-Wohin is active.

pg-Ende-Wohin is a page. 
"'She had given me a few dollars that evening and said she wanted to go to the city because her husband was in a military prison there.'

[italic type]Oh Claire, no![roman type]".
The cdesc is "'Where was she going?'" It is for pg-Ende-Menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Ende-Wohin: 
	now pg-Ende-Dorthin is active.

pg-Ende-Dorthin is a page. 
"'Military prison, eh? Well, that's none of my business right now.' Dunder opens the drawer of his desk and hands you your draft notice.

'The governor's men will be here soon to find Thompson and question Mifflin.'

Michael clears his throat. 'Um, we haven't even properly thanked you for everything you've done for us yet. So... Thank you very much.'

He shakes your hand a little awkwardly. Lucy looks at you, her eyes red, and gives you a quick, tight hug."
The cdesc is "'I have to get there as quickly as possible!'" It is for pg-Ende-Menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Ende-Dorthin: 
	now pg-Ende-Taschentuch is active;
	now player has Einberufungsbescheid;

pg-Ende-Taschentuch is a page. 
"Lucy's tear-stained face lights up a little. 'Thank you!'

She takes the handkerchief from your hand and blows her nose.

'Unfortunately, we don't have a lot of money, and I won't touch my stepfather's money for sure. But we'd like to offer you Billy, he's our fastest horse.'

She looks at Michael, who nods eagerly.

'Just leave him with my cousin Marc in Tanner Street when you're in the city.'

You accept with gratitude and get up."
The cdesc is "'Here's your hankie. It sure helped me a lot.'". It is for pg-Ende-Menu. It is a dead-end. It is one-off. It is inactive.

pg-Ende-end is a page.
The cdesc is "End conversation". It is for pg-Ende-Menu. It is an end-page.

A page-toggle rule for pg-Ende-End: 
	now Taschentuch is in r-Backstage;
	now Schaufel is in r-Backstage;
	now Lampe is in r-Backstage;
	now Brecheisen is in r-Backstage;
	now Einberufungsbescheid is in Tasche;
	now Streichhölzer is in Tasche;
	now Tasche is closed;
	now player is in r-Steppe;

Test 4 with "test 7 / l / x bed / x table / x passage / x house / se / out / get bag / get papers / read papers / x Sheriff / talk to dunder / 1 / 1 / 1 / 1 / 1 / 1".

[Name Lucy unbekannt, kurz]
Test 4b with "test 7b / talk to dunder / 1 / 1 / 1 / 1 / 1 / 1".

[Lampe holen]
Test 4c with "Test 13 / s / e / n / e / s / x ceiling / x lamp / take lamp / pull chair / get lamp / t woman / 5 / 0 / use chair / get lamp / x lamp / turn on lamp / burn lamp".

Section 5 - Gemischtwarenladen

r-Laden is a room.
The printed name is "General Store".
The description is "[if unvisited]A small [Glocke] jingles brightly as you enter the store. The area for customers is so small that two people can barely turn around at the same time.[paragraph break]The shopkeeper Bill appears in the doorway behind the counter, croaks a quiet 'morning' and gives you a wry smile.[paragraph break][end if]You're standing in front of the counter[if not unvisited], behind it is [Ladenmann] [Ladenmann-action][end if]. Apart from the open [Regale] behind [Ladenmann], the store is quite empty.[paragraph break][if Brecheisen is on Theke]There is a crowbar on the counter. [end if][if Streichhölzer is on Theke]There is a small brown envelope with matches on the counter. [end if]The door to the south leads out onto the road.".
Understand "general store", "store" as r-Laden.

The Geruch of r-Laden is "It smells a bit like old man and lots of aromas that remind you that you haven't eaten anything today.".
r-Hauptstraße is outside of r-Laden.

A Ladentuer is a door in r-Laden. The printed name is "store door".
The description is "The entrance door to the store.".
The Ladentuer is south of r-Laden and north of r-Hauptstraße.
Understand "store door", "door" as Ladentuer.
Ladentuer is locked.
Instead of using door, try going outside.

Instead of going to r-Laden when Ladentuer is locked:
	say "Bill's store is not yet open.".

A Glocke is scenery in r-Laden. The printed name is "bell".
The description is "A small bell on the store door, probably made of brass.".
Understand "bell", "brass" as Glocke.
Instead of using the Glocke, say "DING!";

A Theke is a supporter in r-Laden. The printed name is "store counter".
The description is "A wide wooden counter with a flap as a passageway."
Understand "store counter", "counter", "flap" as Theke.
Instead of using the Theke, say "Bill wouldn't like that.";

A Durchgang-Laden is scenery in r-Laden. The printed name is "passageway".
The Durchgang-Laden is unwichtig.
Understand "passageway" as Durchgang-Laden.

A Fenster-Laden is scenery in r-Laden. The printed name is "window".
The description is "A rather dusty window facing Main Street.".
Understand "window", "windows" as Fenster-Laden.

A Regale is scenery in r-Laden. The printed name is "wall shelves".
The description is "[desc-regale]".
Understand "shelf", "shelves", "wall" as Regale.
To say desc-regale:
	say "The large wall shelves are pretty empty. A few cardboard boxes, tins, small canvas bags and large brown bottles apparently contain flour, sugar, beans and a few other things that you can't identify more precisely from the scrawled [Schildchen].[run paragraph on][line break]".

A Warencontainer is a thing in r-Laden. The printed name is "goods container". 
The description is "You will not need the goods in [the noun]. Talk to Bill if you need something."
Understand "box", "boxes", "tin", "tins", "bag", "bags", "bottle", "bottles" as Warencontainer.

A Waren is a thing in r-Laden. The printed name is "goods". 
The description is "You don't want to buy [the noun]. Talk to Bill if you need something."
Understand "goods", "flour", "sugar", "beans", "things", "herring", "herrings", "tool", "tools" as Waren.

Some Schildchen is scenery in r-Laden. The printed name is "labels".
The description is "You can't read the labels, but you don't think you will need any of these things."
Understand "label", "labels", "sign", "signs" as Schildchen.

A Ladenmann is a person in r-Laden. The printed name is "Bill". Ladenmann is proper-named.
The description is "The hunchbacked shopkeeper's name is Bill, at least that's what it says on the sign outside. He is an old man with snow-white, thinning hair and a scarred but friendly-looking face. He wears a stained smock and leans on a walking stick.".
Understand "Bill", "man", "shopkeeper" as Ladenmann.

Instead of taking Waren, try buying Waren instead.
Instead of taking Warencontainer, try buying Warencontainer instead.

Instead of buying something when player is in r-Laden:
	say "Just talk to Bill if you want to buy something. If you need something specific, you'll be able to ask for it.".

A Ladenmann-Aussehen is scenery in r-Laden. The printed name is "Bill's appearance". The Ladenmann-Aussehen is proper-named. It is unwichtig.
Understand "hair", "face", "smock", "stick", "walking stick" as Ladenmann-Aussehen.
Instead of doing anything except examining with Ladenmann-Aussehen:
	say "Better leave Bill alone.".

To say Ladenmann-action: say "[one of]leaning on his walking stick[or]scratching his chin[or]rubbing his eyes[or]coughing croakily[at random]"

After telling the Ladenmann about:
	now Gebaeude is examined;
	populate choice lists for pg-Bill-menu;
	if assigned index is greater than 1:
		now assigned index is 0;
		clear choices;
		say  "What would you like to say to [the Ladenmann]?";
		switch to cyoa at pg-Bill-menu;
	else:
		now assigned index is 0;
		clear choices;
		say "You have nothing to say to [the Ladenmann] right now.";

pg-Bill-menu is a page. 

pg-Bill-gehts is a page. 
"'Well, it has to, right?'

Bill grins, showing off a yellow incisor in the upper jaw of his otherwise toothless mouth.

'The coach is overdue, and I've got almost nothing left. I hope there was no robbery.'"
The cdesc is "'How's it going?'" It is for pg-Bill-menu. It is a dead-end. It is one-off.

pg-Bill-waren is a page. 
"'Everything you see behind me, you'll have to read it yourself. I won't sell you these red herrings though, they're no good anymore.'".
The cdesc is "'What's for sale here?'" It is for pg-Bill-menu. It is a dead-end. It is one-off.
A page-toggle rule for pg-Bill-waren: 
	now pg-Bill-schilder is active.

pg-Bill-schilder is a page. 
"Bill laughs out loud, croaking, and suffers a small coughing fit. He wipes his mouth on his coat and smiles, looking slightly past you.

'I'm sorry, boy. My wife used to label the goods, but she's no more. Her writing was beautiful.'

He grabs his face, lost in thought, shakes his head briefly and looks at you.

'Just ask me if you want something specific, I'll probably remember where it is. I keep tools and stuff in the back anyway.'"
The cdesc is "'I can't read most of the labels.'" It is for pg-Bill-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Bill-waren: 
	now pg-Bill-schilder is active.

pg-Bill-lucy is a page. 
"Bill squints his eyes suspiciously.

'Lucy is a fine girl, what's your business with her?'".
The cdesc is "'Do you happen to know where Lucy is?'" It is for pg-Bill-menu. It is a dead-end. It is one-off.
A page-toggle rule for pg-Bill-lucy: 
	now pg-Bill-lucy2 is active.

pg-Bill-lucy2 is a page. 
"You tell Bill what happened. He seems moved.

'Oh boy. I don't know where she might be, maybe with her lad? Anyway, she hasn't been in the store for a few days, and I can't really see much through these dirty windows. I'm sorry.'"
The cdesc is "'Lucy has gone missing.'" It is for pg-Bill-menu. It is a dead-end. It is one-off. It is inactive.

pg-Bill-kuhfuß is a page.
"Bill blinks at you. 'A chisel? Nah, I don't have one of those.'

He thinks for a moment and smiles. 'But I should have a gooseneck somewhere around the back.'"
The cdesc is "'Do you have a chisel or something like that?'" It is for pg-Bill-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Bill-kuhfuß: 
	now pg-Bill-kuhfuß2 is active.

pg-Bill-kuhfuß2 is a page.
"The shopkeeper looks at you in amazement and then laughs croakily. 'Where do you come from, boy? A crowbar! Hold on, I'll go and get it.'

He disappears through the passageway in the back. A couple of minutes and a few dubious noises and expletives later, he steps back up to the counter, his sparse hair full of cobwebs.

'Sorry boy, I can't find it. I just can't see well enough without my pince-nez.'"
The cdesc is "'What the heck is a gooseneck?'" It is for pg-Bill-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Bill-kuhfuß2: 
	now pg-Bill-zwicker1 is active;
	now pg-Bill-zwicker2 is active.

pg-Bill-zwicker1 is a page.
"Bill backs away and squints his eyes.

'And then you knock me out back there? Nah nah, you stay right here in the front boy!'"
The cdesc is "'Can I have a look maybe?'" It is for pg-Bill-menu. It is a dead-end. It is one-off. It is inactive.

pg-Bill-zwicker2 is a page.
"Bill looks through the stained windows, lost in thought. 'I don[']t know.'

He raps his knuckles on the counter. 'I must have still had them when I went over to my wife's grave this morning. I couldn't see ten feet in this sandstorm without them.[page-told]'".
The cdesc is "'Where are your pince-nez?'" It is for pg-Bill-menu. It is a dead-end. [It is one-off.] It is inactive.
A page-toggle rule for pg-Bill-zwicker2: 
	if Bills-Frau is found:
		now pg-Bill-zwicker2 is inactive;
		now pg-Bill-frau is active.

pg-Bill-frau is a page.
"'Her name [italic type]was[roman type] Mathilda.' 

He pulls up his nose and rubs his eye. 'Called her Hilda most of the time.'"
The cdesc is "'Um, what is your wife's name?'" It is for pg-Bill-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Bill-frau: 
	now Bills-Frau is proper-named.

pg-Bill-zwicker-found is a page.
"You gently place the pince-nez on the counter. Bill's face brightens and he looks at you gratefully.

'There they are! Thank you very much, my boy! Without them, I'd be pretty screwed in the long run.'"
The cdesc is "'I believe I've found your pince-nez.'" It is for pg-Bill-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Bill-zwicker-found:
	now pg-Bill-zwicker-found2 is active.

pg-Bill-zwicker-found2 is a page.
"'Of course! I'll be back in a minute.'

A seemingly endless [italic type]minute[roman type] later, Bill reappears in the doorway and slams the crowbar down on the counter in front of you.

'It's normally eight bucks, but if you don't need it forever, I'll lend it to you, you seem like an honest guy.'"
The cdesc is "'Could you have another look for that crowbar now?'" It is for pg-Bill-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Bill-zwicker-found2:
	now Ladenmann has the Zwicker;
	now the Brecheisen is on the Theke.

pg-Bill-Spalt is a page.
"Bill looks at you, puzzled. 'Do I look like a builders['] merchant? I don't have anything like that.[page-told]'

He closes his eyes as if to think, but then shakes his head in annoyance. 'The squeaking of that damn windmill is driving me crazy, I'm telling you.'"
The cdesc is "'I could use a long pole or something.'" It is for pg-Bill-menu. It is a dead-end. It is inactive.

pg-Bill-Schaufel is a page.
"'No, unfortunately I don't have any more. I sold my last one to Marten.'"
The cdesc is "'Do you have a shovel for me?'" It is for pg-Bill-menu. It is a dead-end. It is one-off. It is inactive.

pg-Bill-anzünden is a page.
"Bill's face brightens. 'Of course I do! The good old ones without that security bullshit, you can light them anywhere.'

He puts a small brown paper bag on the table. 'That'll be a dollar.'

You put a crumpled dollar bill on the counter. Bill pockets it."
The cdesc is "'Do you sell matches?'" It is for pg-Bill-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Bill-anzünden:
	now the Streichhölzer are on the Theke;
	now Geldbetrag is Geldbetrag minus 1.

pg-Bill-Laterne is a page.
"Bill shrugs his shoulders regretfully. 'Haven't got any at the moment boy, sorry.'"
The cdesc is "'Do you have kerosene lamps?'" It is for pg-Bill-menu. It is a dead-end. It is one-off. It is inactive.

pg-Bill-Abgrund is a page.
"The old man scratches his chin thoughtfully and looks out of the window.

'I had about fifty feet of a nice thick rope. Two young soldiers came by and said they only needed like twenty feet of it.'

His eyes flash as a broad grin spreads across his face.

'Told them I had nothing to cut it, so they bought the whole thing.'"
The cdesc is "'I have to climb down somewhere, do you have anything for me?'" It is for pg-Bill-menu. It is a dead-end. It is one-off. It is inactive.

A page-toggle rule for pg-Bill-Abgrund:
	now pg-Bill-Seil is active.

pg-Bill-Seil is a page. 
"'They were in a hurry building a gallows to hang a few deserters outside the city.'

Bill squints his eyes and draws in his breath. The memory seems unpleasant to him.

'The whole village should be watching. As soon as it was done, the soldiers left again, and Marten was told to take care of the bodies.'

He rubs his nose briefly and looks directly at you. 'Now that I think of it, they didn't seem to have the rest of the rope with them. I wouldn't be surprised if it's still out there somewhere.'"
The cdesc is "'What did they need the rope for?'" It is for pg-Bill-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Bill-Seil:
	now pg-Barbier-Seil is active.

pg-Bill-end is a page.
The cdesc is "End conversation". It is for pg-Bill-menu. It is an end-page.

Test 5 with "Test X / n / l / x Bill / x bell / x shelves / x counter".

[Zwicker]
Test 5b with "Test 12 / x boulder / e / n / e / n / t bill / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 2 / s / e / n / x cross / 1 / 2 / 3 / 4 / 5 / s / w / n / t bill / 1 / 1 / s / e / n / x grave / 1 / 2 / 5"

[Brecheisen]
Test 5c with "Test 5b / s / w / n / give pinchnez / t bill / 1 / 1 / 1 / take crowbar"

[Streichhölzer]
Test 5d with "Test 4c / n / n / p matches / t Bill / 4 / 0 / p matches / use lamp with matches".

[Seil]
Test 5e with "Test 13b / s / e / n / e / n / t bill / 6 / 6 / 6 / s".

Section 6 - Barbier

r-Barbier is a room. r-Barbier can be locked or unlocked. r-Barbier is locked.
The printed name is "Barber Shop".
The description is "[if unvisited]You briefly nudge the red, white and blue pole next to the entrance door and enter the store. You are pleasantly surprised at how bright and clean it is here.[paragraph break][end if]An expansive [Sessel] made of red leather is resplendent in front of a large [Spiegel] attached to the wall. Small bottles, cans and other novelties are scattered around on various tables and shelves.[paragraph break][if Papagei is in r-Barbier]The parrot sits on a perch and wobbles its head. [end if][The Barbier] stands behind the armchair [Barbier-action].".
Understand "barber shop", "shop" as r-Barbier.
The Geruch of r-Barbier is "It smells pretty good here. Somewhat fresh.".
It is northeast of r-Hauptstraße.
r-Hauptstraße is outside of r-Barbier.

Instead of going to r-Barbier when r-Barbier is locked:
	say "The barber shop still seems to be closed.".

Instead of going south in r-Barbier:
	try going southwest instead.

A Krimskrams is scenery in r-Barbier. The printed name is "novelties". 
The description is "You're not interested in all this hairdressing stuff."
Understand "novelties", "odds", "ends", "stuff", "bottle", "bottles", "can", "cans", "table", "tables", "shelf", "shelves" as Krimskrams.
Instead of taking Krimskrams, try examining Krimskrams.

A Sessel is scenery in r-Barbier. The printed name is "tilt chair".
The description is "A large armchair in red leather that can be adjusted in height.".
Understand "chair", "arm chair", "armchair", "tilt chair", "tiltchair" as Sessel.
Instead of doing anything except examining with the Sessel:
	say "[The Barbier] probably doesn't like it when you fiddle around with his armchair, and unfortunately you don't have time to enjoy any of his services."

A Spiegel is scenery in r-Barbier. The printed name is "mirror".
The description is "You could do with a shave. And a haircut. And taking a bath.".
Understand "mirror", "wall mirror", "wall" as Spiegel.

A Stange-Barbier is scenery in r-Barbier. The printed name is "perch".
Understand "pole", "bar", "perch" as Stange-Barbier.
Stange-Barbier is unwichtig.

A Papagei is a animal in r-Barbier. The printed name is "parrot".
The description is "[desc-Papagei]".
Understand "parrot", "bird", "Molly", "Blackbeard" as Papagei.

To say desc-Papagei:
	if player does not have Papagei and Papagei is in r-Barbier:
		say "[if Papagei is proper-named]Molly[else]A beautiful parrot[end if] is tripping up and down on [if Papagei is proper-named]her[else]its[end if] perch peacefully.[run paragraph on]";
		if Papagei is zutraulich:
			say " [The Papagei] looks at you expectantly.[run paragraph on][line break]";
		else:
			say "[run paragraph on][line break]";
	else:
		say "'Braaak!'[run paragraph on][line break]";

Instead of telling the Papagei about:
	if Papagei is in r-Huegelkette or Papagei is in r-Mine:
		say "'FIRE! FIRE! Braaak!'";
	else:
		say "'[one of]Little Bo Peep has lost her sheep and doesn't know where to find it. [or]To-to-to-be or not to-to-to-be. That is the question. [or]Yo-ho-ho and a bottle o['] rum!
 [or]I shot an arrow as a test, a hundred paces shot it west. [or]I never give a sucker an even break, and that's a lead pipe cinch. [at random][run paragraph on]Bra[one of]a[or]aa[or]aaa[at random]k!'[paragraph break] ".

Instead of pushing the Papagei, try taking the Papagei.
Instead of pulling the Papagei, try taking the Papagei.

Instead of taking the Papagei:
	if player has Papagei:
		say "You already have [the Papagei]!";
	else if Brocken is entdeckt:
		say "Molly tilts her head and backs away a little. She's obviously had enough excitement today.";
	else if Papagei is zutraulich and Papagei is nehmbar:
		say "You hold your outstretched arm out to [the Papagei]. [if Papagei is proper-named]She[else]It[end if] looks briefly at Marten, who nods approvingly, then hops along on your arm and makes [if Papagei is proper-named]herself[else]itself[end if] comfortable on your left shoulder. 
		
		'BRAAAK!'";
		now player has Papagei;
	else if Papagei is zutraulich:
		say "You hold your outstretched arm out to [the Papagei]. [if Papagei is proper-named]She[else]It[end if] trundles towards you, looks briefly at Marten and then hops back onto [if Papagei is proper-named]her[else]its[end if] perch.";
	else if Papagei is nehmbar:
		say "You hold your outstretched arm out to [the Papagei]. [if Papagei is proper-named]She tilts her[else]It tilts its[end if] head and looks at you expectantly, but doesn't move.";
	else:
		say "[The Barbier] gives you a suspicious look. You leave it alone for now.";

Check showing Keks to Papagei:
	say "[The Papagei] flutters excitedly. 'Cookies! Cookies! Braaak!'";

Before giving Keks to Papagei:
	say "[The Papagei] greedily grabs the cookie and munches it down in no time at all.";
	now the Papagei is zutraulich;
	remove the Keks from play;
	stop the action.

Rule for printing inventory details for the Papagei:
	say " (on your left shoulder)";

A Barbier is a man in r-Barbier. The printed name is "barber".
The description is "[The Barbier] is a stocky man with thick upper arms and a well-groomed black beard. He is wearing a striped vest and short linen pants.".
Understand "barber", "man", "Marten", "hairdresser" as Barbier.
A Barbier can be InformedAboutLucy. Barbier is not InformedAboutLucy.

The Barbier-Aussehen is scenery in r-Barbier. The printed name is "Marten's appearance". The Barbier-Aussehen is proper-named. It is unwichtig.
Understand "arm", "arms", "upper arm", "upper arms", "beard", "black beard", "vest", "trousers", "pants", "linen pants", "knife", "razor", "razor blade", "blade", "scissors", "pipe", "anchor", "appearance" as Barbier-Aussehen.
Instead of doing anything except examining with Barbier-Aussehen:
	say "Better leave [the Barbier] and his stuff alone. He looks pretty strong.".

To say Barbier-action: say "[one of]picking his nose[or]polishing the mirror[or]sorting some tins[or]sharpening his scissors[or]checking his razor blade[at random]".

After telling the Barbier about:
	if Barbier is not proper-named:
		say "The barber takes a small step towards you and gives you a friendly grin.
		
		'Moin Mister! My name is Marten, what can I do for you today? Trim your beard, cut your hair, treat a bullet wound?'[paragraph break]";
	now the printed name of the Barbier is "Marten";
	now the Barbier is proper-named;
	populate choice lists for pg-Barbier-menu;
	if assigned index is greater than 1:
		now assigned index is 0;
		clear choices;
		say "What would you like to say to [the Barbier]?";
		switch to cyoa at pg-Barbier-menu;
	else:
		now assigned index is 0;
		clear choices;
		say "You have nothing to say to [the Barbier] right now.";

pg-Barbier-menu is a page. 

pg-Barbier-moin is a page. 
"[The Barbier] laughs heartily and holds his belly.

'Excuse me mister, I can't quite break that habit. I am Frisian.'"
The cdesc is "'Moin? Is that French or something?'" It is for pg-Barbier-menu. It is a dead-end. It is one-off.
A page-toggle rule for pg-Barbier-moin: 
	now pg-Barbier-friese is active.

pg-Barbier-friese is a page. 
"'I came here over ten years ago on a clipper, was first mate. Actually wanted to go gold prospecting with Molly, but then the war took us elsewhere.'"
The cdesc is "'What brought you here?'" It is for pg-Barbier-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Barbier-friese: 
	now pg-Barbier-molly is active.

pg-Barbier-schusswunde is a page. 
"Marten laughs boomingly.

'As a barber on the high seas, it's always useful to know a bit about treating wounds. Besides, there's no doctor here anymore.'

He pulls a small pipe out of his pocket and puffs some tobacco into it with a practiced movement.

'And before you ask, I'm also the gravedigger here. Fortunately, I haven't had much work like that since the war.'"
The cdesc is "'Gunshot wound? I thought you were a barber.'" It is for pg-Barbier-menu. It is a dead-end. It is one-off.

pg-Barbier-molly is a page. 
"'My wife? Haa-ha-ha!'

[The Barbier] can barely contain himself and slaps his thighs.

'Molly is my bird young lad! We've experienced a lot together at sea. She was there as a fire watcher, she goes off like an alarm at the slightest bit of smoke.'"
The cdesc is "'So Molly is your wife?'" It is for pg-Barbier-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Barbier-molly: 
	now the printed name of the Papagei is "Molly";
	now the Papagei is proper-named;
	now the Papagei is female;
	now pg-Barbier-molly2	is active.

pg-Barbier-molly2 is a page. The Toldcounter is 1.
"'She was our fire watcher, goes off like an alarm at the slightest bit of smoke.[page-told]'".
The cdesc is "'Why was Molly at sea with you again?'" It is for pg-Barbier-menu. It is a dead-end. It is inactive.

pg-Barbier-mine is a page.
"'The mine? Why would you want to go in there?'

You tell Marten what's going on. For the first time, he makes a serious face.

'Aah. That's bad news. Don't think you'll get in through the front, not with those boys there. Maybe there's another way in.'"
The cdesc is "'Any idea how to get into the mine?'" It is for pg-Barbier-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Barbier-mine:
	now pg-Barbier-leihen is active;
	now Barbier is InformedAboutLucy.

pg-Barbier-leihen is a page.
"'What, you wanna take my bird with you? Because of Lucy?'

Marten thoughtfully scratches the tattooed anchor on his upper right arm.

'Well, if she goes with you voluntarily, that's fine with me. She'll run off when things get dicey. But please take good care of her!'"
The cdesc is "'May I borrow [the Papagei] for a little while?'" It is for pg-Barbier-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Barbier-leihen:
	now Papagei is nehmbar.

pg-Barbier-Schaufel is a page.
"Marten laughs boomingly and blinks at you.

'You think I dig the graves here with my hands or what? Of course I have a shovel! I just got a new one a few days ago from Bill, the old cheapskate!'" 
The cdesc is "'You must have a shovel, right?'".
It is for pg-Barbier-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Barbier-Schaufel:
	now pg-Barbier-Schaufel2 is active.

To say desc-Barbier-Schaufel2:
	if Barbier is InformedAboutLucy:
		say "'Is this for the Lucy thing?', Marten asks. You nod. He tilts his head and strokes his beard. 'Well okay then, I'll go get it for you.'

		He briefly disappears in the back of the store and reappears shortly afterwards with a large sturdy-looking shovel in his hand.

		'It's a bit muddy, so clean it up if it bothers you. And make sure I'll see it again!'

		You thank him and take the shovel.[run paragraph on]";
	else:
		say "Marten laughs and pats you on the left shoulder. 'My shovel? Now why would I give it to you? No, you won't get it just like that.[page-told]'";

pg-Barbier-Schaufel2 is a page. "[desc-Barbier-Schaufel2][run paragraph on]".
The cdesc is "'May I borrow your shovel?[if Barbier is InformedAboutLucy] It is really important.[end if]'".
It is for pg-Barbier-menu. It is a dead-end. [It is one-off]. It is inactive.
A page-toggle rule for pg-Barbier-Schaufel2:
	if Barbier is InformedAboutLucy:
		now player has the Schaufel;
		now pg-Barbier-Schaufel2 is inactive;
		now pg-Bill-Schaufel is inactive.

pg-Barbier-Seil is a page.
"Marten flinches and looks at you suspiciously.

'No, I wasn't. Unfortunately, I was there when they were [italic type]inaugurated[roman type], and I also was allowed to work for two days straight afterwards until everyone was buried. Why do you ask?'"
The cdesc is "'Were you there when the gallows were built?'".
It is for pg-Barbier-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Barbier-Seil:
	now pg-Barbier-Seil2 is active.

pg-Barbier-Seil2 is a page.
"'Yes, of course lad. After all, I was ordered to clean up the mess.'

He shakes his head and clears his throat.

'The soldiers gave me a bit of money and told me to put all the rest of the stuff in the hatch and nail it up tight, cut the noose and bury the bodies. It was a ridiculous wage for all the work, but saying no certainly wouldn't have been a good idea.'"
The cdesc is "'Bill said there must have been a lot of rope left over, do you know where that went?'".
It is for pg-Barbier-menu. It is a dead-end. It is one-off. It is inactive.

pg-Barbier-end is a page. 
The cdesc is "End conversation". It is for pg-Barbier-menu. It is an end-page.

Test 6 with "test X / w / w / p handkerchief / e / e / ne / l / x barber / t barber / 1 / 1 / 1 / 1 / 1 / 0 / t molly / t molly / t molly / p molly / purloin cookie / i / show cookie to molly / give cookie to molly / p molly / t marten / 1 / 1 / 0 / pull molly / i".

[Seil]
Test 6b with "Test 5e / ne / t marten / 1 / 1 / 0".

Test 6c with "Test x / ne / x parrot / purloin cookie / give parrot cookie / x molly".

Section 7 - Ranch

r-Ranch is a room. The printed name is "Ranch".
The description is "[if unvisited]You come to a small [Holzhaus] with an adjoining [Stall] and a large fenced-in [Koppel].[paragraph break][else]A small [Holzhaus] with an adjoining [Stall] and a large fenced-in [Koppel]. There is a small [Bank] in front of the house. [end if][if Lucy is in r-Ranch][A Lucy] sits sobbing on a small [Bank].[else][paragraph break]A narrow path leads south to the wind pump. The main road leads further out of town from the east to the west.[end if][random-event]".
Understand "Ranch" as r-Ranch.
The Geruch of r-Ranch is "It smells mainly of straw and horse shit.".

r-Ranch is west of r-Hauptstraße.
Instead of going northwest in r-Ranch, say "[desc-OOB]".
Instead of going north in r-Ranch, say "[desc-OOB]".
Instead of going northeast in r-Ranch, say "[desc-OOB]".
Instead of going southwest in r-Ranch, say "[desc-OOB]".
Instead of going southeast in r-Ranch, say "[desc-OOB]".

Before going east when player is in r-Ranch:
	if player has Stange:
		say "[ort-stange]" instead.

A Holzhaus is scenery in r-Ranch. The printed name is "wooden hut".
The description of Holzhaus is "A small wooden house with a flat, slightly sloping roof, hardly more than a shed.".
Understand "hut", "wooden hut", "shed", "house", "door", "roof" as Holzhaus.
Instead of entering or opening Holzhaus, say "You have no business there. [if Lucy is not in r-Ranch]Lucy and Michael are definitely not here.[paragraph break][else][line break][end if]"

A Koppel is scenery in r-Ranch. The printed name is "paddock".
The description is "A small paddock, enclosed by a waist-high [Zaun]. There is nothing here but dried steppe grass.".
Understand "paddock" as Koppel.
Instead of entering Koppel, try examining Koppel.

A Steppengras is scenery in r-Ranch. The printed name is "steppe grass".
The description is "Dry steppe grass, it's been a long time since the last rain. You won't need it.".
Understand "grass","steppe grass" as Steppengras.
Instead of doing anything except examining with Steppengras, try examining Steppengras.

A Zaun is scenery in r-Ranch. The printed name is "fence".
The Zaun is unwichtig.
Understand "fence" as Zaun.

A Stall is scenery in r-Ranch. The printed name is "stable".
The description is "Some horses are moving around restlessly in the stable. The [Gestank] is breathtaking.".
The Geruch of Stall is "It smells like horse shit."
Understand "stable", "horse stable", "stables", "horse stables" as Stall.
Instead of entering Stall, say "The smell is really unpleasant, and you don't expect to find anything important there."

A Gestank is scenery in r-Ranch. The printed name is "stench".
Understand "stench" as Gestank.
The description is "Mainly horse shit."

A Bank is a scenery in r-Ranch. The printed name is "bench".
The description is "A simple bench, made of wood."
Understand "bench", "seat" as Bank.
Instead of entering bank, say "You really don't have time to rest now.".

The Pferde is scenery in r-Ranch. The printed name is "horses".
The description is "The horses seem to be restless.".
Understand "horse", "horses" as Pferde.
The Pferde are unwichtig.

A Stoffball is verschwunden and scenery in r-Ranch. The printed name is "ball".
Understand "fabric ball", "cloth ball", "ball" as Stoffball.

A Junge is verschwunden and scenery in r-Ranch. The printed name is "boy". 
Understand "boy" as Junge.

A Klapperschlange is verschwunden and scenery in r-Ranch. The printed name is "rattlesnake".
Understand "rattlesnake", "snake" as Klapperschlange.

A Hund is verschwunden and scenery in r-Ranch. The printed name is "dog".
Understand "dog" as Hund.

A Dörrfleisch is verschwunden and scenery in r-Ranch. The printed name is "jerky".
Understand "dried meat", "meat", "jerky", "beef" as Dörrfleisch.

A Lucy is a woman in r-Ranch. The printed name is "young woman".
The description of Lucy is "[Lucy-desc]".
Lucy is not entdeckt. Lucy can be lauschend. Lucy is not lauschend.

To say Lucy-desc:
	if Lucy is in r-Ranch:
		say "[The Lucy] has her face buried in her hands and doesn't notice you. She is wearing functional, robust clothing and looks well-groomed.[run paragraph on][line break]";
	else:
		say "[The Lucy] wears functional, robust clothing and looks well-groomed.[run paragraph on][line break]";

Understand "woman", "girl", "young woman" as Lucy.

Lucy can be crying or not crying. The Lucy is crying.

Before going somewhere when player is in r-Ranch and Lucy is in r-Ranch:
	if Lucy is crying:
		say "You can't just leave [the Lucy] sitting here like that." instead.

After telling Lucy about when player is in r-Ranch:
	say "What would you like to say to [the Lucy]?";	
	switch to cyoa at pg-Lucy-menu.

pg-Lucy-menu is a page. 

pg-Lucy-ansprechen is a page. 
"[The Lucy] looks up to you, her eyes welling with tears. 'Michael is gone!'".
The cdesc is "'May I help you Ma'am?'"
It is for pg-Lucy-menu. It is one-off. It is a dead-end.
A page-toggle rule for pg-Lucy-ansprechen: 
	now pg-Lucy-Michael is active;
	now pg-Lucy-Lucy is active.

pg-Lucy-Michael is a page.
"[The Lucy] blows into her handkerchief once.
'Michael is my fiancé. He wanted to go to the saloon yesterday.'

She takes a deep breath and points over to the horses.

'When I got here this morning, the horses weren't looked after and there was no sign of Michael. He would never leave the horses to themselves like that!'".
The cdesc is "'Who is Michael?'".
It is for pg-Lucy-menu. It is one-off. It is a dead-end. It is inactive.
A page-toggle rule for pg-Lucy-Michael: 
	now pg-Lucy-passiert is active.

pg-Lucy-Lucy is a page.
"'I'm Lucy.'".
The cdesc is "'What is your name?'".
It is for pg-Lucy-menu. It is one-off. It is a dead-end. It is inactive.
A page-toggle rule for pg-Lucy-Lucy: 
	now Lucy is proper-named;
	now the printed name of Lucy is "Lucy".

pg-Lucy-passiert is a page.
"She averts her eyes.

'I don't know. Before he left yesterday, he said briefly that he had heard something about the [name-Brüder]. When I wanted to know what exactly, he looked at me thoughtfully and said it wasn't that important.'

[The Lucy] turns back to you. Her gaze wanders past your face, her eyes widen in fear.

'Hey, what--'

[bold type]POW![roman type][run paragraph on]".
The cdesc is "'Do you have any idea what might have happened?'".
It is for pg-Lucy-menu. [It is one-off. It is a dead-end.] It is inactive. It is an end-page.

A page-toggle rule for pg-Lucy-passiert:
	cyoa teleport to r-Flashback-1.
	
pg-Lucy-end is a page. 
The cdesc is "End conversation". 
It is for pg-Lucy-menu. It is an end-page.

Test 7 with "get bag / d / out / w / x woman / talk to woman / 1 / 1 / 1 / 1".

[nicht nach Name fragen]
Test 7b with "get bag / d / out / w / t woman / 1 / 1 / 2".

Test 7c with "test f1 / test f2 / e / x horses / x horses / x horses / x horses / x horses"

Section 8 - Galgen

r-Galgen is a room. The printed name is "Gallows".
The description is "[if unvisited]As you pass the last building, the wind hits you hard from the side. You pull your scarf over your nose and continue walking slowly. After a few more steps, you can gradually make out a kind of scaffolding in the cloud of dust in front of you.[paragraph break][end if]You are standing in front of a [Galgen] consisting of two posts with crossbars and a [Schlinge]. A [Podest] serves as a foundation.[paragraph break]Further north you think you can recognize some leaning [Kreuze-Galgen]. Heading west, you can return to [Stadt].[random-event]".

The Geruch of r-Galgen is "The wind here is too piercing to smell anything.".
r-Galgen is east of r-Hauptstraße.
Instead of going northwest in r-Galgen, say "[desc-OOB]".
Instead of going northeast in r-Galgen, say "[desc-OOB]".
Instead of going east in r-Galgen, say "[desc-OOB]".
Instead of going southwest in r-Galgen, say "[desc-OOB]".
Instead of going south in r-Galgen, say "[desc-OOB]".
Instead of going southeast in r-Galgen, say "[desc-OOB]".

A Galgen is scenery in r-Galgen. The printed name is "gallows".
The description is "The gallows consist of two thick posts with crossbars and a rope. The noose is severed."
Understand "gallows", "scaffold", "scaffolding", "post", "posts", "bars", "bars", "crossbar", "crossbars" as Galgen.

A Schlinge is scenery in r-Galgen. The printed name is "noose".
The description is "A thick rope, tied into a noose and cut at the lower end. The gallows were probably decommissioned after the war.".
Understand "noose", "rope", "sling", "loop" as Schlinge.
Instead of taking Schlinge:
	say "Even if you could untie the noose, the rope would be of no use to you in this form.".

A Podest is a thing in r-Galgen. The printed name is "wooden platform".
The description is "[desc-Podest][run paragraph on]". Podest is fixed in place.
Understand "wooden platform", "platform", "pedestal", "foundation", "plate", "wooden plate", "panel", "opening", "hatch", "hole" as Podest while Podest is geöffnet.
Understand "wooden platform", "platform", "pedestal", "foundation", "plate", "wooden plate", "panel", "hatch", "beam", "beams", "nail", "nails", "board" as Podest while Podest is entdeckt and Podest is not geöffnet.
Understand "wooden platform", "platform", "pedestal", "foundation", "panel", "hatch", "beam", "beams" as Podest while Podest is not entdeckt.

Instead of looking under Podest:
	say "The platform is completely closed off with thick wooden beams.".

Instead of pushing or pulling or opening or rubbing or taking Podest:
	if Podest is not entdeckt:
		try taking sand instead;
	else if Podest is not geöffnet:
		say "Without suitable tools, this is a pointless undertaking.";
	else:
		say "The platform is already open."

Instead of entering Podest, try examining Podest.
Instead of unlocking Podest with something:
	if Podest is geöffnet:
		say "The platform is already open!";
	else if the second noun is Brecheisen:
		try using Brecheisen on Podest;
	else:
		say "[The second noun] cannot be used this way.";

Podest is not entdeckt. Podest can be geöffnet. Podest is not geöffnet.
To say desc-Podest:
	if Podest is not entdeckt:
		say "A wooden platform, apparently hastily put together, forms the foundation of the gallows. It is almost completely covered with [Sand].";
	else if Podest is not geöffnet:
		say "A large wooden plate was nailed to the platform directly under the gallows.";
	else if player has Lampe and Lampe is lit:
		say "You shine your lamp into the opening. A few mice take flight, squeaking.";
		if Seil is in r-Galgen:
			say "[line break]In the pale light of the lamp, you can make out a few bent nails, some boards covered in cobwebs and a coiled rope.";
		else:
			say "[line break]In the pale light of the lamp, you can make out a few bent nails and some boards covered in cobwebs.";
	else:
		say "It's too dark to see what's in there, and you don't feel like sticking your hand in just like that.";
		if Lampe is not allowed-to-take:
			now pg-Bill-Laterne is active;
			now pg-Barfrau-Laterne is active;

Some Kreuze-Galgen is scenery in r-Galgen. The printed name is "crosses".
The description is "Several crosses, some of them crooked. From a distance you can't make out any details.".
Understand "crosses", "cross", "wooden crosses" as Kreuze-Galgen.

A Stadt is scenery in r-Galgen. The printed name is "town".
The description is "A couple of inconspicuous houses in the west.".
Understand "city", "town", "houses", "house" as Stadt.

A Frau is verschwunden and scenery in r-Galgen. The printed name is "woman".
Understand "woman", "old woman" as Frau.

A Gehstock is verschwunden and scenery in r-Galgen. The printed name is "walking stick".
Understand "walking stick", "stick" as Gehstock.

To say desc-Sand:
	say "The sand forms a small dune and comes up to your knee at the highest point. There is practically nothing left to see of the base of the platform.[run paragraph on][line break]";
	if player does not have Schaufel:
		now pg-Bill-Schaufel is active;
		now pg-Barbier-Schaufel is active.

A Sand is scenery in r-Galgen. The printed name is "sand".
The description is "[desc-Sand][run paragraph on]".
Understand "sand", "dune" as Sand.

Instead of pushing Sand, try taking Sand.
Instead of pulling Sand, try taking Sand.
Instead of rubbing Sand, try taking Sand.
Instead of taking Sand:
	if Podest is not entdeckt:
		say "You try to scrape the sand away with your feet, but in this wind that seems to be a pointless endeavor. Perhaps you would have more success with proper tools.";
		now pg-Bill-Schaufel is active;
		now pg-Barbier-Schaufel is active;
	else:
		say "You've had enough sand for today.";

Test 8 with "p bag / down / out / e / x gallows / x rope / x pedestal / x sand / x crosses / x town / push sand / pull sand / take sand".

[Schaufel]
Test 8b with "Test X / e / p sand / w / w / w / p handkerchief / e / e / ne / t marten / 4 / 3 / 4 / 0 / out / x shovel".

[Seil]
Test 8c with "Test 8b / o / x pedestal / use shovel on sand / x plate / purloin crowbar / use crowbar on plate / x opening / purloin lamp / purloin matches / turn on lamp / x opening / x nails / x boards / p nails / p boards / p rope".

[Öffne Podest]
Test 8d with "Test 8b / o / x platform / dig sand with shovel / x plate / open pedestal / purloin brecheisen / open platform with clothing / open platform with shovel / open platform with crowbar".


Section 9 - Friedhof

r-Friedhof is a room. The printed name is "Cemetery".
The description is "[if unvisited]You walk a few steps further towards the crosses. Half-height bushes protect the gravesites and their visitors from the wind.[paragraph break][end if]Several crooked crosses stand carelessly crammed next to each other on a small hill, none of them inscribed. Possibly the final resting place of deserters.[paragraph break]Further ahead, four crosses stand neatly lined up next to each other, each at the head of a grave thoroughly edged with stones.[paragraph break]In the south you can see the outline of the gallows.[random-event]".
Understand "cemetery", "graveyard" as r-Friedhof.

The Geruch of r-Friedhof is "The bushes, hot from the sun, exude a slightly sweet scent.".
r-Friedhof is north of r-Galgen.
Instead of going northwest in r-Friedhof, say "[desc-OOB]".
Instead of going north in r-Friedhof, say "[desc-OOB]".
Instead of going northeast in r-Friedhof, say "[desc-OOB]".
Instead of going east in r-Friedhof, say "[desc-OOB]".
Instead of going southwest in r-Friedhof, say "[desc-OOB]".
Instead of going southeast in r-Friedhof, say "[desc-OOB]".
Instead of going west in r-Friedhof, say "[desc-OOB]".

Buschwerk is scenery in r-Friedhof. The printed name is "shrubbery".
The description is "Small bushes enclose the cemetery and offer some protection from the piercing wind."
Understand "shrubbery", "bush", "bushes", "foliage" as Buschwerk.

The Kreuze is scenery in r-Friedhof. The printed name is "grave crosses".
The description is "Four grave crosses."
Understand "first cross", "second cross", "third cross", "fourth cross", "cross", "crosses", "grave cross", "grave crosses", "hill" as Kreuze.

The Gräber is scenery in r-Friedhof. The printed name is "graves".
The description is "Four graves."
Understand "first grave", "second grave", "third grave", "fourth grave", "grave", "graves", "stones", "gravesite", "gravesites" as Gräber.

The Gecko is verschwunden and scenery in r-Friedhof. The printed name is "Gecko".
Understand "gecko", "gekko", "lizard" as Gecko.

Instead of examining Kreuze:
	say "Which of the crosses would you like to read?";	
	switch to cyoa at pg-Kreuze-menu.

pg-Kreuze-menu is a page. 

pg-Kreuze-page1 is a page. 
The description is "'Biff Clayton'[line break]'1837-1868'".
The cdesc is "First cross". It is for pg-Kreuze-menu. It is a dead-end.

[Frau von Bill]
pg-Kreuze-page2 is a page. 
The description is "'Mathilda Brooks, née Walker'[line break]'1808-1869'[if Bills-Frau is proper-named][paragraph break]This is probably the grave of Bill's wife.[end if]".
The cdesc is "Second cross". It is for pg-Kreuze-menu. It is a dead-end.
A page-toggle rule for pg-Kreuze-page2:
	if pg-Bill-zwicker2 is active:
		now pg-Bill-zwicker2 is inactive;
		now pg-Bill-frau is active;
		now Bills-Frau is found;
	else:
		now Bills-Frau is found.

pg-Kreuze-page3 is a page. 
The description is "'Wendy Porter'[line break]'1816-1875'".
The cdesc is "Third cross". It is for pg-Kreuze-menu. It is a dead-end.

[Mutter von Lucy]
pg-Kreuze-page4 is a page. 
The description is "'Lucille Thompson, née Powell'[line break]'1845-1878'".
The cdesc is "Fourth cross". It is for pg-Kreuze-menu. It is a dead-end.

pg-Kreuze-end is a page. 
The cdesc is "End". It is for pg-Kreuze-menu. It is an end-page.

Instead of examining Gräber:
	say "Which of the graves would you like to examine?";	
	switch to cyoa at pg-Gräber-menu.

To say desc-Grab-leer:
	say "You don't see anything special, and you don't want to dig around the graveyard without good reason.[run paragraph on]";

pg-Gräber-menu is a page. 

pg-Gräber-page1 is a page. 
The description is "[desc-Grab-leer][run paragraph on]".
The cdesc is "First grave". It is for pg-Gräber-menu. It is a dead-end.

[Frau von Bill]
pg-Gräber-page2 is a page. 
The description is "[if Bills-Frau is proper-named and Bills-Frau is found and player does not have Zwicker]You carefully run your fingers through the fine sand on the grave until your fingers feel something.[paragraph break]There they are, Bill's pince-nez![paragraph break]You gently blow the sand off the lenses and pocket them.[else][desc-Grab-leer][run paragraph on][end if]".
The cdesc is "Second grave". It is for pg-Gräber-menu. It is a dead-end.
A page-toggle rule for pg-Gräber-page2: 
	if Bills-Frau is proper-named and Bills-Frau is found and player does not have Zwicker:
		now Zwicker is found;
		now pg-Gräber-page2 is inactive;
		now pg-Gräber-page2-found is active.

pg-Gräber-page2-found is a page.
The description is "Rest in peace, Mathilda.".
The cdesc is "Second grave". It is for pg-Gräber-menu. It is a dead-end. It is inactive.

pg-Gräber-page3 is a page. 
The description is "[desc-Grab-leer][run paragraph on]".
The cdesc is "Third grave". It is for pg-Gräber-menu. It is a dead-end.

pg-Gräber-page4 is a page. 
The description is "[desc-Grab-leer][run paragraph on]".
The cdesc is "Fourth grave". It is for pg-Gräber-menu. It is a dead-end.

pg-Gräber-end is a page. 
The cdesc is "End". It is for pg-Gräber-menu. It is an end-page.
A page-toggle rule for pg-Gräber-end:
	if Zwicker is found and player does not have Zwicker and Ladenmann does not have Zwicker:
		now player has Zwicker;
		now pg-Bill-zwicker2 is inactive;
		now pg-Bill-zwicker-found is active.

Test 9 with "Test X / e / n / x cross / 1 / 2 / 3 / 4 / 0 / x grave / 1 / 2 / 3 / 4 / 0"

Section 10 - Mine

r-Mine is a room. The printed name is "Mine".
The description is "[if unvisited]After a short stretch of dusty road, a low ridge rises up in front of you. A few minutes later, you recognize the entrance to a mine.[paragraph break][end if]The entrance to the mine is lit by torches on both sides. A thin plume of smoke rises from the highest point of the tunnel and quickly disappears in the wind.[paragraph break]A hollow-eyed man with disheveled black hair leans against an empty cart, playing around with his rifle.[if Taschentuch is in r-Mine][paragraph break]At the edge of the path, something white flashes out from behind a small shrub.[end if][paragraph break]The path to the east leads back to town.".
r-Mine is west of r-Ranch.
Instead of going north in r-Mine, say "[desc-OOB]".
Instead of going northwest in r-Mine, say "[desc-OOB]".
Instead of going northeast in r-Mine, say "[desc-OOB]".
Instead of going south in r-Mine, say "[desc-OOB]".
Instead of going southwest in r-Mine, say "[desc-OOB]".
Instead of going southeast in r-Mine, say "[desc-OOB]".
Instead of going west in r-Mine, try examining Minenmann.

The Geruch of r-Mine is "It smells slightly of smoke."

A Hügelkette is scenery in r-Mine. The printed name is "range of hills".
The description is "The range of hills stretches from north-east to south.".
Understand "range", "hill", "hills", "mountain", "mountains", "hill chain" as Hügelkette.

A Mine is scenery in r-Mine. The printed name is "mine entrance".
The description is "Apart from a few empty carts and some torches, you can't see much at the entrance to the mine."
Understand "mine", "entrance", "mine entrance", "cart", "carts", "torch", "torches", "gallery", "tunnel" as Mine.
Instead of doing anything except examining with the Mine:
	say "Too far away and well guarded. Maybe you should try to find another way.";

A Rauch is scenery in r-Mine. The printed name is "smoke".
The description is "Black smoke is constantly billowing out of the mine. Perhaps caused by the torches burning down there, or by other mining work."
Understand "smoke", "plume", "plume of smoke" as Rauch.

A Minenmann is a man in r-Mine. The printed name is "man".
Minenmann can be sauer. Minenmann is not sauer.
Instead of doing anything except shooting with Minenmann:
	say "As you get closer, the man points his rifle at you.[paragraph break][if Minenmann is not sauer]'Get the hell out of here, quickly!'[else]'Are you deaf [one of]idiot[or]fool[or]dumbass[or]shithead[at random]? [one of]Get lost!'[or]Get out of here!'[or]Piss off!'[at random][end if][line break]You raise your hands apologetically and back off.";
	now Minenmann is sauer.

Instead of shooting Minenmann:
	say "You can't just shoot him in the face. First of all that's not very nice and second it would probably bring other similarly bad-tempered characters onto the scene.[paragraph break]Maybe there's another way into the mine."

Understand "man", "goon", "bandit", "hair", "rifle" as Minenmann.

A Strauch is scenery in r-Mine. The printed name is "shrub".
The description of Strauch is "[if Taschentuch is in r-Mine]A handkerchief lies next to the bush, half covered in sand.[else]A small shrub stands at the edge of the path.[end if]".
Understand "path", "bush", "shrub" as Strauch.

Weißes is scenery in r-Mine. The printed name is "white".
[The special indefinite article of Weißes is no article.]
The description is "It is a handkerchief."
Understand "something", "white", "something white" as Weißes.

Instead of taking Weißes:
	say "It's a handkerchief. You take it with you.";
	now the player has Taschentuch;
	now pg-Barfrau-Taschentuch is active;
	now pg-Sheriff-Taschentuch is active;
	now pg-Barbier-Mine is active.

Instead of taking Taschentuch when Taschentuch is in r-Mine:
	say "You put the hankie in your pocket.";
	now the player has Taschentuch;
	now pg-Barfrau-Taschentuch is active;
	now pg-Sheriff-Taschentuch is active;
	now pg-Barbier-Mine is active.

Test 10 with "Test X / w / w / t man / e / w / t man / x bush / x handkerchief / p hankie".

Section 11 - Windrad

r-Windrad is a room. The printed name is "Wind Pump".
The description is "[if unvisited]After a few yards you arrive at the wind pump that you could see through the window of your room.[paragraph break][end if]The windmill is mounted at a height of around fifteen yards on a lattice mast made of long metal rods. It squeaks terribly with every rotation. A metal tail vane automatically points the rotor blades in the direction of the wind.[paragraph break]The path leads back to the ranch in the north and towards the hill chain in the west.[random-event]".
The Geruch of r-Windrad is "You don't smell anything special. The squeaking wheel takes over your senses.".

r-Windrad is south of r-Ranch.
Instead of going northwest in r-Windrad, say "[desc-OOB]".
Instead of going northeast in r-Windrad, say "[desc-OOB]".
Instead of going east in r-Windrad, say "[desc-OOB]".
Instead of going south in r-Windrad, say "[desc-OOB]".
Instead of going southwest in r-Windrad, say "[desc-OOB]".
Instead of going southeast in r-Windrad, say "[desc-OOB]".

Instead of going up in r-Windrad:
	say "You are not free from giddiness.";
	
A Windrad is scenery in r-Windrad. The printed name is "wind pump".
The description is "The windmill turns slightly in the wind and squeaks heartbreakingly.".
Understand "pump", "windpump", "wind pump", "windmill", "wind mill", "mill", "wheel", "tail", "vane", "rotor", "blade", "blades", "rotor blade", "rotor blades" as Windrad.

A Mast is scenery in r-Windrad. The printed name is "lattice mast".
The description is "The lattice mast consists of welded metal rods.[if Stange is not abgerissen] One of the rods near the ground seems to have come loose.[end if]".
Understand "lattice", "mast", "lattice mast", "tower", "rods", "bars" as Mast.

The Kojoten are verschwunden and scenery in r-Windrad. The printed name is "coyotes". Understand "coyote", "coyotes" as Kojoten.

Instead of climbing Mast, try climbing Windrad.
Instead of climbing Windrad:
	say "You're a bit afraid of heights, and there's nothing up there that you need.";

A Stange is a thing in r-Windrad. The printed name is "metal rod".
Understand "rod", "metal rod", "pole", "metal pole", "bar", "metal bar" as Stange.

A Stange can be abgerissen. The Stange is not abgerissen.
Stange is sperrig.
The description is "A solid metal rod, about ten feet long with a diameter of about two inches.".
Instead of taking the Stange:
	if the Stange is not abgerissen:
		say "You lever the rod back and forth until the remaining weld seam detaches from the lattice mast. It is so long and heavy that you have to carry it with both hands.";
		now player has Stange;
		now the Stange is abgerissen;
		now the Stange is ablegbar;
	else if Brocken is entfernt:
		say "The long metal rod is bent and even more unwieldy than before. You no longer want to carry it around with you.";
	else if Player has Stange:
		say "You are already carrying the rod.";
	else:
		say "You take the metal rod.";
		now player has Stange;

After dropping the Stange:
	say "You place the rod on the ground.".

A description-concealing rule:
	if the Stange is abgerissen and Brocken is not entfernt:
		now the Stange is marked for listing;


Test 11 with "Test X / w / s / p rod / drop rod / l".

Section 12 - Berg

r-Huegelkette is a room. The printed name is "Hill Chain".
The description is "[if unvisited]After a few minutes['] walk, you find yourself at the bottom of a low hill chain.[paragraph break][end if]A large boulder field of larger and smaller rocks stretches hundreds of yards across. The hills seem to offer good protection from the wind as it is almost windless here.[paragraph break][if Brocken is entfernt][desc-Brocken-entfernt][run paragraph on][line break][end if]The path in the east leads back to the wind pump of the town.[desc-Berg][run paragraph on]".
Understand "hill", "chain", "hill chain", "chain of hills" as r-Huegelkette.
The Geruch of r-Huegelkette is "It smells slightly of smoke.".
r-Huegelkette is west of r-Windrad.
Instead of going northwest in r-Huegelkette, try going north.
Instead of going northeast in r-Huegelkette, try going north.
Instead of going west in r-Huegelkette, say "[desc-OOB]".
Instead of going south in r-Huegelkette, say "[desc-OOB]".
Instead of going southwest in r-Huegelkette, say "[desc-OOB]".
Instead of going southeast in r-Huegelkette, say "[desc-OOB]".

Instead of going inside in r-Huegelkette, try going north.
Instead of going north in r-Huegelkette when r-Hoehle is not north of r-Huegelkette:
	if Brocken is not entdeckt:
		say "You see no path in this direction.";
	else:
		say "You can't squeeze past the boulder, the gap [if Spalt is bearbeitet]still [end if]isn't wide enough.";

To say desc-Berg:
	if player has Papagei and Brocken is not entdeckt:
		say "[paragraph break]Molly paces restlessly up and down on your shoulder.[run paragraph on]";
	else if Brocken is entdeckt and Papagei is in r-Huegelkette:
		say "[paragraph break]Molly sits on a boulder and flutters her wings excitedly.[run paragraph on]".

A Geröllfeld is scenery in r-Huegelkette. The printed name is "boulder field".
The description is "[desc-Geröllfeld][run paragraph on]".
The Geruch of Geröllfeld is "It smells very slightly of smoke.".
Understand "stones", "scree", "scree field", "boulders", "boulder field", "rocks", "rock field", "rubble", "field", "hill", "hills", "rubble" as Geröllfeld.

To say desc-Geröllfeld:
	if player has Papagei: 
		now Brocken is entdeckt;
		now pg-Barbier-molly2 is inactive;
		say "You walk up and down the boulder field when Molly suddenly starts flapping excitedly and hops off your shoulder onto one of the boulders.
		
		'Braak! BRAAAAK! FIREEEE!'[run paragraph on][line break]";
	else if Brocken is entfernt:
		say "[desc-Brocken-entfernt]";
	else if Brocken is entdeckt:
		say "Here lies the boulder that Molly discovered.[run paragraph on][line break]";
	else:
		say "You walk up and down the boulder field, but can't see anything special about the boulders with the naked eye.
		
		At one point, you believe you notice the scent of smoke, but you can't pinpoint its exact origin.[run paragraph on][line break]".

After examining Geröllfeld:
	if player has Papagei and Brocken is entdeckt:
		now Papagei is in r-Huegelkette;
		now pg-Bill-Kuhfuß is active.

A Weg is scenery in r-Huegelkette. The printed name is "path".
The Weg is unwichtig.

A Brocken is a thing in r-Huegelkette. The printed name is "boulder".
The description is "[desc-Brocken][run paragraph on]".
Understand "boulder", "bowlder", "rock" as Brocken while player is in r-Huegelkette.
A Brocken can be entdeckt. Brocken is not entdeckt.
A Brocken can be entfernt. Brocken is not entfernt.

Instead of pushing the Brocken, try taking the Brocken.
Instead of pulling the Brocken, try taking the Brocken.
Instead of taking the Brocken:
	if Brocken is entfernt:
		say "The current position of the boulder is just fine.";
	else if Brocken is entdeckt:
		say "You push and pull the boulder with all your might, but it won't move. You probably won't get any further here unless you use some proper tools.";
	else:
		say "You don't want to search aimlessly in the boulder field.";

To say desc-Brocken:
	if Brocken is entfernt:
		say "The boulder lies lonely at the end of the scree field, about twenty steps away from the tunnel entrance that it previously blocked.";
	else if Brocken is entdeckt:
		say "Molly sits on the boulder and flutters excitedly. As you examine the boulder more closely, you recognize what appears to be a larger cavity behind a [if Spalt is not bearbeitet]thumb wide[else]narrow[end if] crevice.";
		now pg-Bill-Kuhfuß is active;
	else: [nicht entdeckt]
		say "You can't see anything special between the boulders.";

To say desc-Brocken-entfernt:
	say "To the north, a narrow passage about shoulder-high can be seen between the stones, with a bent metal rod lying next to it. A few yards off is the boulder that previously closed off the tunnel entrance.";

A Spalt is a thing in r-Huegelkette. The printed name is "crevice".
A Spalt can be bearbeitet. Spalt is not bearbeitet.
A Spalt can be bestangt. Spalt is not bestangt.
A Spalt is fixed in place.
The description is "[desc-Spalt]".
The Geruch of Spalt is "It smells distinctly of smoke.".
Understand "crevice", "gap", "hole", "crack", "cavity", "draught", "entrance", "passage" as Spalt.

To say desc-Spalt:
	if Brocken is entfernt:
		say "The crevice is no more. In place of the rock you removed, a narrow tunnel entrance is now visible to the north.[run paragraph on][line break]";
	else:
		say "There seems to be a larger cavity behind the [if Spalt is not bearbeitet]thumb wide[else]narrow[end if] crevice. You hold your hand inside and feel a faint draught.[run paragraph on][line break]".

Instead of opening the Spalt:
	say "You cannot open the crevice with your bare hands.".

Instead of inserting something into the Spalt:
	try using the noun on the second noun instead.

Instead of unlocking the Spalt with something:
	try using the second noun on the noun instead.

Instead of pushing the Stange, try pulling the Stange.
Instead of pulling the Stange:
	say "You push and pull, but the bar doesn't bend an inch.";

Test 12 with "Test x / w / s / w / x boulder field / l / e / purloin molly / purloin crowbar / purloin rod / w / x boulder field / l / x crevice / use crowbar on crevice / x crevice / use rod with crevice / l / x boulder / x crevice".

Test 12b with "Test 12 / put rod in crevice / e / p rod / w / put rod in crevice".

[Brecheisen]
Test 12c with "Test 12b / purloin crowbar / put crowbar in gap / put rod in crevice".

Section 13 - Höhle

r-Hoehle is a room. The printed name is "Cave".
The description is "[desc-hoehle][run paragraph on]".
Understand "cave" as r-Hoehle.

The Geruch of r-Hoehle is "It smells slightly of smoke and damp stone. And somehow slightly sweet, a smell you've never smelled before."

To say desc-hoehle:
	if r-Hoehle is unvisited:
		say "You squeeze through the narrow gap. After a few small steps, you can stand comfortably and move freely.[paragraph break]";
	say "The air is pleasantly cool and damp, and it slightly smells of smoke.[run paragraph on][if Lampe is not lit] It's so dark that you can hardly see your own feet.[else] A large, pointed boulder marks the edge of a precipice to the north.[end if]";
	if Seil is angebunden:
		say "[line break]A rope is tied to the pointed boulder.";
	say "[line break]To the south, pale light filters through the long, narrow cave entrance.[run paragraph on]";

Instead of going northeast in r-Hoehle: try going west instead.
Instead of going northwest in r-Hoehle: try going west instead.
Instead of going southeast in r-Hoehle: try going west instead.
Instead of going southwest in r-Hoehle: try going west instead.
Instead of going east in r-Hoehle: try going west instead.
Instead of going north in r-Hoehle: try going down instead.
Instead of climbing Seil in r-Hoehle: try going down instead.
Instead of climbing Abgrund in r-Hoehle: try going down instead.
Instead of climbing Spitzfelsen in r-Hoehle: try going down instead.

Instead of going west in r-Hoehle:
	if Lampe is not lit:
		say "You carefully feel the wall. ";
	say "This is as far as it goes.".

Instead of going down in r-Hoehle:
	if Lampe is not lit:
		say "[if Spitzfelsen is not entdeckt]You feel your way forward carefully...[paragraph break]Ouch! You hit your shin on a big rock or something.[paragraph break][end if]It really is too dark in here to go any further, you could seriously hurt yourself.";
		now Spitzfelsen is entdeckt;
		now pg-Bill-Laterne is active;
		now pg-Barfrau-Laterne is active;
	else if Seil is not angebunden:
		say "The precipice is far too steep to climb down safely without gear.";
		if player does not have Seil:
			now Abgrund is entdeckt;
			now pg-Bill-Abgrund is active;
			now pg-Barfrau-Abgrund is active;
	else if Seil is angebunden: [hat Seil]
		if r-Gewoelbe is unvisited:
			say "[desc-abseilen][run paragraph on]";
			now r-Hoehle is above r-Gewoelbe;
			now r-Gewoelbe is below r-Huegelkette;
		now player is in r-Gewoelbe.

To say desc-abseilen:
	say "You take the handle of the kerosene lamp between your teeth and grasp the rope with both hands.
	
	With your feet braced against the rock face, you slowly rappel down into the dark abyss.";
	screenbreak;

A Spitzfelsen is scenery in r-Hoehle. The printed name is "pointed rock".
The description is "[desc-Spitzfelsen][run paragraph on]".
Understand "rock", "pointed rock", "boulder", "pointed boulder" as Spitzfelsen while player is in r-Hoehle.
Spitzfelsen is not entdeckt.
Instead of tying the Seil to the Spitzfelsen, try using Seil on Spitzfelsen.

To say desc-Spitzfelsen:
	if Lampe is not lit:
		say "The pointed rock feels damp and smooth.";
	else:
		say "A man-sized, pointed rock stands right on the edge of the precipice.";

A Abgrund is a thing in r-Hoehle. The printed name is "precipice".
The description is "[desc-Abgrund][run paragraph on]".
Understand "precipice", "abyss", "cliff", "edge", "hole" as Abgrund.
Abgrund is not entdeckt.

To say desc-Abgrund:
	if player does not have Lampe or Lampe is not lit:
		say "You can't see anything.";
	else if Abgrund is entdeckt:
		say "Even with the light from the lamp, you can't see the bottom. It's definitely too deep to jump.";
	else:
		say "You are standing on the edge of a precipice. Even with the light from the lamp, you can't see the bottom.[paragraph break]You push a few pebbles over the edge with your foot and listen into the darkness...[paragraph break][italic type]Plop![roman type][paragraph break]Sounds like solid ground, maybe five, maybe ten yards deep. Either way, definitely too deep to jump more than once.";
		now Abgrund is entdeckt;
		now pg-Bill-Abgrund is active;
		now pg-Barfrau-Abgrund is active;

Test 13 with "Test 12c / l / n / e / w / n".

[Abgrund]
Test 13b with "Test 5d / s / w / s / w / n / n / x abyss / down / l".

[Abseilen]
Test 13c with "Test 13b / down / purloin rope / use rope on abyss / purloin lamp / tie lamp to rope / tie rope to lamp / tie rope to rock / down".

Section 14 - Gewölbe

r-Gewoelbe is a room. The printed name is "Vault".
The description is "[if unvisited][Gewoelbe-desc-unvisited][end if][Gewoelbe-desc]".
Understand "Vault" as r-Gewoelbe.
The Geruch of r-Gewoelbe is "Smoke and various vapors mix here in an unpleasant way to create a sweet, slightly stagnant smell. You feel slightly foggy."

The Diecount is a number that varies. The Diecount is 0.

Instead of going south in r-Gewoelbe: try going up instead.

Check going up in r-Gewoelbe:
	if Lucy is entdeckt:
		say "[Flucht-desc]";
		stop the action;
	else if Geselle is geduckt:
		say "[Geselle-geduckt]";
		stop the action;
	else if Geselle is bewusstlos:
		say "Are you just going to leave Lucy and Michael here? The guard could be discovered at any time.";
		stop the action;
	else:
		say "You can't just leave Lucy and Michael here. Besides, you're not sure if you'll ever manage to climb up that rope again.";
		stop the action;

Check going east in r-Gewoelbe:
	if Lucy is entdeckt:
		say "[Gehe-Eingang-desc]";
		stop the action;

To say Geselle-geduckt:
	say "You should take care of that guard as soon as possible. Time seems to stand still as you ponder all the potential actions to take.";

To say Gewoelbe-desc-unvisited:
	say "After what feels like an eternity, your feet finally feel solid ground again. Sweat runs down your back as you turn away from the wall. Your strained panting paints small clouds of steam into the glow of your lantern.[paragraph break]A deep rumble, apparently not far away, makes you fall silent in a flash. Carefully, you follow the dim light of the curved tunnel ahead of you.[paragraph break]As the passage widens and becomes brighter, you can hear voices more and more clearly. Carefully, you take cover behind a waist-high stone ledge from which you can see the large vault below you, illuminated by countless torches.";
	screenbreak;
	now Taschentuch is ablegbar;

To say Gewoelbe-desc:
	if Lucy is entdeckt:
		say "Several men run down from the cave entrance in your direction, some with their weapons drawn. You perceive the situation as if in slow motion. Your right hand twitches slightly.[run paragraph on]";
		if Diecount is greater than 1:
			say "[paragraph break][Eingang-desc]";
	else if Lucy is lauschend:
		say "[Gewoelbe-desc-Lauschen]";
		now Lucy is entdeckt;
	else:
		say "About a dozen men seem to be working at various stations some distance away. Some are stirring in large, fired steel kettles, others are handling large vats covered with cloth, while others seem to be rolling something flat and forming it into balls. It smells bad and sweet at the same time, making you feel a bit dizzy.[paragraph break][Nische-desc]";
	if Geselle is not geduckt and Geselle is not bewusstlos:
		say "[paragraph break]In front of it, a grumpy-looking fellow sits on a flattened stone, his arms resting on his thighs and a pistol in his right hand.[run paragraph on]";

To say Gewoelbe-desc-Lauschen:
	[Calvin und Bob Mifflin, Ron Thompson]
	say "A very dapper-looking middle-aged man with a cane and bowler hat and a much younger, dirtier and wildly gesticulating fellow stroll in your direction. They stop just a few steps away.

	'What else are we supposed to do Ron? They'll start singing as soon as we let them out!'

	'That's still Mr. Thompson to you, Cal. I'll talk to Lucy when she's calmed down a bit, then we'll see.' Ah, the younger man must be Calvin Mifflin then!";
	screenbreak;
	say "The young man looks down and shakes his head. 'Well, I don't know Ro-- Mr. Thompson. She sounds like a smart mouth to me.'

	With a quick, almost casual movement, Thompson swings the cane and brings the knob down on the man's left knee with lightning speed. 'AAAARGH!' the man cries out in surprise and collapses instantly.

	As if nothing had happened, Thompson continues to speak in a consistently sonorous voice. 'It's not your place to talk about her like that. If she and her groom don't come to their senses, we will have to find another solution I'm afraid.'

	Lucy turns crimson red. 'YOU GODDAMN---'[line break]";
	screenbreak;
	say "Michael quickly presses a hand over Lucy's mouth, but it's too late. Thompson takes a few steps to the side to look into the alcove. His eyes widen.

	'The prisoners are free! Over here, now!'

	Several men look up and run down from the cave entrance in your direction, some reaching for their weapons.[run paragraph on]";

Gewölbe-scenery are scenery in r-Gewoelbe. The printed name is "vault items".
The description is "[Gewölbe-scenery-desc][line break]".
To say Gewölbe-scenery-desc:
	say "You can't see any more details from here, but you're not particularly interested at the moment anyway.[run paragraph on]".

Understand "station", "stations", "kettle", "kettles", "steel kettle", "steel kettles", "cloth", "vat", "vats", "cake", "cakes", "ball", "balls", "torch", "torches", "ledge", "stone ledge" as Gewölbe-scenery.

Some Männer is scenery in r-Gewoelbe. The printed name is "men".
The description is "[Männer-desc]".
Understand "men", "mayor", "Thompson", "bandits", "criminals", "father", "stepfather", "worker", "workers", "mifflin" as Männer.
Instead of telling the Männer about, say "It's time to act, not to talk.".

To say Männer-desc:
	if Lucy is entdeckt:
		say "The men come towards you. Although they are running, you perceive their movements as if in slow motion.[run paragraph on][line break]";
	else:
		say "Most of them seem very busy.[run paragraph on][line break]";

A Eingang is scenery in r-Gewoelbe. The printed name is "entrance".
The description is "[Eingang-desc][line break]".
Understand "entrance", "mine entrance" as Eingang.

To say Eingang-desc:
	if Lucy is entdeckt:
		say "Everything seems like a blur, but next to the cave entrance a cart loaded with barrels catches your eye.[run paragraph on]";
		if Diecount is greater than 2:
			say " [Keil-desc]";
	else:
		say "There's a cart loaded with barrels at the mine entrance to the east.[run paragraph on]";

A Fässer is scenery in r-Gewoelbe. The printed name is "barrels".
The description is "[Fässer-desc][line break]".
Understand "barrel", "barrels" as Fässer.
To say Fässer-desc:
	if Lucy is entdeckt:
		say "Several wooden barrels. On one of them you can see the letters [bold type]NG[roman type].[run paragraph on]";
	else:
		say "There's a cart loaded with barrels at the mine entrance to the east.[run paragraph on]";
Instead of taking Fässer:
	say "The barrels are way out of reach.";

A Karren is scenery in r-Gewoelbe. The printed name is "cart".
The description is "[Karren-desc][line break]".
Understand "cart", "wheel", "wheels" as Karren.
To say Karren-desc:
	if Lucy is entdeckt:
		say "A cart with four spoked wheels, loaded with several wooden barrels.[paragraph break]A large wooden wedge under one of the wheels prevents the cart from rolling away.[run paragraph on]";
	else:
		say "There's a cart loaded with barrels at the mine entrance to the east.[run paragraph on]";

Instead of doing anything except examining or shooting with the Karren:
	say "It's far too far away.";

A Keil is scenery in r-Gewoelbe. The printed name is "wedge".
The description is "[Keil-desc][line break]".
Understand "wedge", "wooden wedge", "chock", "wooden chock" as Keil.
To say Keil-desc:
	if Lucy is entdeckt:
		say "A large wooden wedge blocks one of the wheels and prevents the cart from rolling away.[run paragraph on]";
	else:
		say "At the mine entrance in the east is a cart loaded with barrels, one of the front wheels locked with a wooden wedge.[run paragraph on]";
Instead of taking Keil:
	say "You can't reach it. Maybe there[']s another way to get rid of it.";

A Geselle is a person in r-Gewoelbe. The printed name is "guard".
The description is "[Geselle-desc][run paragraph on]".
Understand "fellow", "man", "chap", "stone", "arm", "arms", "thigh", "thighs", "pistol", "hand", "guard", "sand", "head" as Geselle.

To say Geselle-desc:
	if Geselle is bewusstlos:
		say "The guard lies face down in the dirt and doesn't move.";
	else if Geselle is geduckt:
		say "An inviting back of the head covered with dry black hair.";
	else:
		say "The man looks glumly at the ground in front of him and scratches his feet in the sand. Occasionally he glances at the young couple in the makeshift cage or lets his gaze wander in your direction, but you are obviously unrecognizable in the semi-darkness behind the rocky ledge.";

Michael is a person in r-Gewoelbe. The printed name is "Michael".
The description is "The young man repeatedly puts his hand on his companion's arm or strokes her face reassuringly.".
Understand "couple", "fiancé", "fiance", "lad" as Michael.

A Felsnische is scenery in r-Gewoelbe. The printed name is "rock niche". 
The description is "[Nische-desc][line break]".
Understand "niche", "alcove", "cage", "makeshift cage", "bars", "prison" as Felsnische.
To say Nische-desc:
	if Lucy is not eingesperrt:
		say "Lucy and Michael stand hunched over in the semi-darkness next to their former prison and stare intently at the goings-on in the vault.[run paragraph on]";
	else if Geselle is bewusstlos:
		say "Lucy and Michael rattle the bars and gesticulate wildly in your direction. You slowly get the impression that they urgently want to talk to you.[run paragraph on]";
	else:
		say "Just a few yards away from you is a large rock alcove. A young couple crouches on the ground behind the bars, sometimes whispering to each other. That's Lucy! Then the young man must be Michael.[run paragraph on]";

Instead of attacking Geselle:
	say "That's too risky without a weapon. An open fight would certainly be noticed quickly.[paragraph break]Maybe you could handle him if he was a little closer.".

Instead of attacking something with something:
	if noun is Geselle:
		if Geselle is bewusstlos:
			say "I think he's had enough for now.";
		else if Geselle is geduckt:
			if the second noun is Revolver or the second noun is Brecheisen or the second noun is Schaufel:
				say "POW! You strike the man down with a well-aimed blow with [the second noun].[paragraph break]You look around furtively, but none of the workers seem to have heard anything. You quickly put the bright handkerchief back in your pocket.";
				now Geselle is not geduckt;
				now Geselle is bewusstlos;
				now player has Taschentuch;
				now Taschentuch is not ablegbar;
			else:
				say "[The second noun] is not particularly suitable for this purpose.";
		else:
			say "He's too far away and sometimes looks in your direction.";
	else if the second noun is Revolver:
		try using Revolver on the noun;
	else:
		say "[desc-funktioniert-nicht]";

Instead of telling Geselle about:
	if Geselle is bewusstlos:
		say "He doesn't seem to be in the mood.";
	else:
		say "Not a good idea.";

Instead of telling Michael about when Michael is in r-Gewoelbe:
	try telling Lucy about "dummy".

[Taschentuch]
Instead of waving Taschentuch, try dropping Taschentuch.
Instead of dropping Taschentuch:
	if Taschentuch is not ablegbar:
		say "You'd rather hold on to it for now.";
	else:
		say "You unfold the bright white handkerchief and let it slide over the edge of the ledge as the guard briefly looks at the prisoners.[paragraph break]A moment later, the man turns his head back in your direction and frowns in irritation. He stands up, slowly walks towards you and bends down in front of you to grab the hankie.[paragraph break]'Where the hell did that come from?'";
		now Geselle is geduckt;

After telling Lucy about when player is in r-Gewoelbe:
	if Geselle is not bewusstlos:
		say "Maybe later, first you have to take care of the guard.";
	else if Lucy is entdeckt:
		say "It's time to act, not to talk.";
	else:
		switch to cyoa at pg-Paar-menu.

pg-Paar-menu is a page.

pg-Paar-Allesklar is a page. 
"Lucy glares at you, her expression a wild mixture of desperation and sheer rage. 'Please get us out of here damnit!'

You use your crowbar to pry the bars apart so that they both can just squeeze through.

The young man breathes a sigh of relief and holds out his hand to you. 'Thank you very much sir. I am Michael.' You shake his hand."
The cdesc is "'Everything okay with you?'" It is for pg-Paar-menu. It is a dead-end. It is one-off.
A page-toggle rule for pg-Paar-Allesklar: 
	now Lucy is not eingesperrt;
	now pg-Paar-Passiert is active.

pg-Paar-Passiert is a page. It is inactive.
"'We don't have time for this now!', Lucy hisses excitedly. 'They're cooking up some mess here, and my stepfather is in on it!'

Her eyes widen and she hastily pulls you both back into the niche. 'Watch out, they're coming!'".
The cdesc is "'What happened to you?'" It is for pg-Paar-menu. It is an end-page.
A page-toggle rule for pg-Paar-Passiert: 
	now Lucy is lauschend.

pg-Paar-end is a page. 
The cdesc is "End conversation". It is for pg-Paar-menu. It is an end-page.

Test 14 with "Test 13c / x man / x niche / x vats / x Lucy / x Michael / shoot man / talk to man / throw hankie / s / hit man / purloin shovel / use shovel on fellow / t guard / x guard / l / x niche". 

[Tode]
To say Flucht-desc:
	say "You grab Lucy and Michael, pushing them over towards the ledge. Bullets whiz past your heads, and as you turn around, you feel a searing pain in your left shoulder that throws you to the ground.[Licht-desc]";

To say Gehe-Eingang-desc:
	say "You raise your arms placatingly and take a step towards the men.
		
		'Guys, this is just a misunderst-'
		
		The noise is deafening as several men open fire on you at the same time. Hit by several bullets, you slump to the ground.[Licht-desc]";

To say Schiess-Männer-desc:
	say "You raise your revolver and hit two of the charging men in the chest and stomach before a bullet shreds your knee. You fall to the ground, screaming.[Licht-desc]";

To say Schiess-Karren-desc:
	say "You draw the revolver at lightning speed and shoot at the cart.[paragraph break]The cart wobbles slightly but does not tip over.[paragraph break]A rifle butt hits you brutally on the forehead as the men reach and overpower you.[Licht-desc]";

To say Schiess-Fässer-desc:
	say "You pull up the revolver, aim carefully and shoot at the barrels on the cart.[paragraph break]You believe to see a watery liquid trickling out of one of the barrels just before a powerfully swung bandit fist smashes your nasal bone with full force.[Licht-desc]";

To say Männer-Schaufel-desc:
	say "You swing the shovel and hit one of the charging men squarely on the left temple, just before another blows your lights out for good with a well-aimed shot.[Licht-desc]";

To say Männer-Brecheisen-desc:
	say "You swing the crowbar with full force and rip open the left side of one of the men's faces, just before another one shreds your right leg with a well-aimed shot from a shotgun.[Licht-desc]";

To say Schiess-Keil-desc:
	say "You squint your left eye and carefully aim at the wooden wedge holding the cart in place. You breathe out halfway and pull the trigger.[paragraph break]The shot releases perfectly and sends the wooden wedge flying in a high arc. The cart rumbles loudly through the resulting cloud of dust and rolls straight towards you.
	
	The men pause and turn around, their eyes widening in fear.
	
	'The nitro! GET OUT!'
	
	You turn to Michael and Lucy, who are staring past you with their mouths wide open. You leap onto them and push them to the ground just before the world explodes around you.";
	weißlicht;
	now Michael is in r-Sheriff;
	now Lucy is in r-Sheriff;
	now the player is in r-Sheriff;
	now the player is eingesperrt;

To say Licht-desc:
	weißlicht;
	say "No, that's not what really happened. [one of]You think through all the possible courses of action again.[or]You did it differently somehow, you're sure of it.[or]In reality of course, you had come up with a much smarter solution.[at random][if Diecount is greater than 2][line break]Perhaps you should take another look around.[end if][line break]The white fog slowly clears before your eyes. The men are still charging towards you.";
	increase Diecount by 1;
	stop the action.

[Showdown]
Test 14b with "Test 14 / up / t couple / 1 / 1 / x entrance / x cart / x wedge / l / e / l / up / l / p wedge / shoot men / shoot cart / shoot barrels / use crowbar on man / use shovel with thompson / use revolver with wedge".

Section 15 - Steppe

r-Steppe is a room. The printed name is "Steppe". 
The description is "[if unvisited][desc-End][run paragraph on][else]In the dusty haze as dusk falls, you can make out the outline of a larger city.[paragraph break]However, you won't be able to reach it today.[end if]".
Understand "Steppe", "city" as r-Steppe.

Billy is a animal in r-Steppe. The printed name is "Billy".
The description is "Billy whips across the steppe as fast as the wind and at full gallop now."
Understand "horse", "stallion", "black horse" as Billy.
Instead of getting off Billy, say "You[']ve lost enough time already. Claire might be in danger.".

Instead of going in r-Steppe:
	say "Unfortunately, you can't go anywhere else. The story ends here for now.";

To say desc-End:
	say "You sit on Billy, a freshly saddled young stallion, your shoulder bag firmly in your grasp. The slowly setting sun casts long shadows on the dusty path in front of you, leading east out of town.

	You turn around one last time and raise your hand towards [if Barfrau is proper-named]Ella, [end if]Marten and Bill, who are standing in the street waving back at you.

	Looking ahead, you set the black horse into a gentle trot. There is still a long way to go.

	[italic type]Why did you think I was in prison, Claire? Who told you that?[roman type]

	No matter. You would find her and soon you would be together again, you were sure of that... But that would be a story for another day.";
	screenbreak;
	say "[line break]
		[line break]
		[line break]
		[line break]
		[line break]
		[line break][bold type]                 ~~~ FIN ~~~[roman type]
		[line break]
		[line break]
		[line break]
		[line break]
		[line break]
		[line break]"; 
	screenbreak;
	say "Thank you for playing [italic type][bold type]Dust[roman type], I really hope you enjoyed it. If you did, please rate the game on IFDB.org - then maybe there will be an end to this story sometime. If you're playing online, just write something down here now and I'll read it later![paragraph break]I'd also be delighted to hear about your thoughts or suggestions at intfiction.org, my Discord at https://bit.ly/Ikes-Discord or by email to dust@ikeserver.de.[paragraph break][desc-dank]2024 © IkeC";

Credits is an action applying to nothing.
Understand "credits" as Credits.

Carry out credits:
	say "[desc-dank]";

To say desc-dank:
	say "Many thanks to Olaf Nowacki, Hannes Schüller, Michael L. and my family for testing and helpful advice. This game was translated from the original German version [bold type]Staub[roman type] with kind help from mathbrush and DeepL. The cover image was created using Stable Diffusion XL.[paragraph break]";

Section 90 - Flashback 1

r-Flashback-1 is a room. The printed name is "[run paragraph on]". [NICHT leer lassen]
The description is "[desc-r-Flashback1][run paragraph on]".

To say desc-r-Flashback1:
	screenbreak-short;
	say "[desc-flashback1][run paragraph on]";
	screenbreak;
	now cyoa mode is false;
	cyoa teleport to r-Sheriff;
	now the player is eingesperrt;
	now Revolver is in Tasche;
	if player has Tasche:
		now Tasche is closed;
		now Tasche is on Schreibtisch;
		now Einberufungsbescheid is on Schreibtisch;
	say "[line break]Ouch.
	
	Your head is pounding again, only this time it doesn't feel like too much whiskey the night before.

	'Enjoying a little nap, eh?'

	You slowly open your eyes, looking straight into the weather-beaten face of the sheriff.[run paragraph on]";

To say desc-flashback1:
	say "[italic type]Claire whirls around. 'To the army? Are you out of your mind?'
	
	She is so beautiful when she is angry, but the sparkling fire in her eyes sometimes scares you a little. As you try to stroke her cheek, she quickly turns away.
	
	'You know we need the money.'
	
	You try to sound as firm and determined as possible, but you're not entirely convinced of your decision yourself. She looks out of the dusty window defiantly, her arms crossed in front of her chest. Her chin trembles slightly.[roman type]
	
	Claire...";

Section 91 - Flashback 2

r-Flashback-2 is a room. The printed name is "[run paragraph on]". [NICHT leer lassen]
The description is "[desc-r-Flashback2][run paragraph on]".
To say desc-r-Flashback2:
	screenbreak;
	say "[desc-flashback2][run paragraph on]";
	screenbreak;
	now r-Hoehle is north of r-Huegelkette;
	now r-Hoehle is inside of r-Huegelkette;
	now r-Huegelkette is south of r-Hoehle;
	now r-Huegelkette is outside of r-Hoehle;
	now Brocken is entfernt;
	now Papagei is in r-Barbier;
	cyoa teleport to r-Huegelkette;
	say "[line break]You open your eyes.[paragraph break]It seems like you hit your head (again), this time probably when you tried to jump to safety from the rolling boulder it seems. At least that seems to have worked.[paragraph break]You slowly pick yourself up and pat the dust off your shoulders. What a shitty day.[run paragraph on]";
	now Stange is in r-Huegelkette;

To say desc-flashback2:
	say "[italic type]You haven't been here at the pier for ages. As always, she wanted to save the money for later, but today you really wanted to go to the sea with her.

	'With or without the hat, what do you think?'

	Claire is sitting on a stool, laughing and holding the hat flapping wildly in the wind. You gave the artist two dollars, hopefully it'll be a nice picture. His piece of charcoal flits across the paper hastily and with skilled strokes.

	Seagulls circle at the end of the pier and screech loudly as a little boy tries to catch them. She turns her head and smiles at you. You clench your fist in your pocket, clutching the ring tightly.[roman type]

	Where are you, Claire?";

Section 95 - Hilfe

Info is an action applying to nothing.
Understand "info" ,"help", "about", "verbs" as info.

Info-Shown is a truth state that varies. 
Info-Shown is false.

Carry out info:
	say "Steer your character by giving directions such as [bold type]SOUTH[roman type] (short: S), [bold type]NORTHWEST[roman type] (NW), [bold type]DOWN[roman type] (D), [bold type]OUT[roman type] etc. and the following commands:
[line break]
[line break]- [bold type]LOOK[roman type] (L)
[line break]- [bold type]EXAMINE[roman type] <Object> (X)
[line break]- [bold type]PICK UP[roman type] <Object> (P)
[line break]- [bold type]TALK TO[roman type] <Person> (T)
[line break]- [bold type]USE[roman type] <Object> [bold type]WITH[roman type] <Object>
[line break]- [bold type]DROP[roman type] / [bold type]PUSH[roman type] / [bold type]OPEN[roman type] <Object>
[line break]
[line break]Other commands are also understood, but not required to complete the game. You might start playing like this: [bold type]LOOK[roman type], [bold type]OPEN WINDOW[roman type], [bold type]X NIGHTSTAND[roman type], [bold type]GET BAG[roman type], [bold type]DOWN[roman type], [bold type]TALK TO WOMAN[roman type] and so on.[paragraph break][bold type]RUN[roman type] displays the locations already visited. These can be reached directly with [bold type]RUN[roman type] <Location>. [bold type]INV[roman type] (I) shows your inventory. [bold type]SAVE[roman type] and [bold type]LOAD[roman type] commands are available as well. Type [bold type]HINT[roman type] for advice if you don't know what to do next.
[line break]
[line break]Actions such as entering new rooms or finding items often unlock new dialog options, so it makes sense to talk to people several times. There are more hints and a walkthrough available at https://ikeserver.de/Dust if you get stuck.";
	if Info-Shown is false:
		now Info-Shown is true;
		say "[line break]";
		say "[desc-dank]";

Tipp is an action applying to nothing.
Understand "hint" ,"hints" as Tipp.
Hinweiscounter is a number that varies. Hinweiscounter is 0.

Carry out Tipp:
	Increase Hinweiscounter by 1;
	if Lucy is in r-Sheriff:
		say "You should be able to manage on your own from now on.";
	else if r-Saloon is unvisited:
		say "Leave the room.";
	else if player does not have Tasche:
		say "Take your bag with you.";
	else if r-Hauptstraße is unvisited:
		say "Go outside and explore the area.";
	else if r-Ranch is unvisited:
		say "Explore the area in more detail.";
	else if r-Mine is unvisited:
		say "Find the mine.";
	else if Taschentuch is in r-Mine:
		say "Take a closer look around the mine.";
	else if r-Barbier is unvisited:
		say "Visit the barber.";
	else if r-Huegelkette is unvisited:
		say "Find another way into the mine.";
	else if Brocken is not entdeckt:
		say "You need Molly to find the mine entrance.";
	else if r-Laden is unvisited:
		say "Visit the general store.";
	else if r-Friedhof is unvisited:
		say "Visit the cemetery.";
	else if Bills-Frau is not proper-named:
		say "Talk to Bill.";
	else if Zwicker is not found:
		say "Find Bill's pince-nez.";
	else if Spalt is not bearbeitet:
		say "Try to widen the crevice at the boulder.";
	else if player does not have Stange and Brocken is not entfernt:
		say "Find something long and sturdy to use as a lever.";
	else if Brocken is not entfernt:
		say "Try to widen the crevice at the boulder even further.";
	else if r-Hoehle is unvisited:
		say "Explore the cave.";
	else if player does not have Lampe:
		say "Get yourself a lamp.";
	else if Lampe is not lit:
		say "Light the lamp.";
	else if Podest is not entdeckt:
		say "Talk to Marten and Bill.";
	else if player does not have Schaufel:
		say "Get a shovel to remove the sand from the platform.";
	else if Podest is not geöffnet:
		say "Open the platform under the gallows.";
	else if r-Gewoelbe is unvisited:
		say "Rappel down the cave.";
	else if Geselle is not geduckt and Geselle is not bewusstlos:
		say "Distract the guard with a suitable object.";
	else if Geselle is not bewusstlos:
		say "Knock the guard out.";
	else if Lucy is not entdeckt:
		say "Talk to Lucy and Michael.";
	else if Lucy is not in r-Sheriff:
		say "It's time to use your weapon.";

Section 98 - Beta

r-Beta is a room. The printed name is "Darkness".
The description is "This is a non-public beta version of Dust. You're welcome to leave comments and suggestions while playing by typing # followed by your comment (the game ignores all commands starting with #). All input is recorded automatically. I'm not easily offended and I want to create the best game possible, so be as talkative, blunt and direct as you like. Thank you for your help!

Please enter your beta code now.".

After reading a command:
	if the player is in r-Beta:
		if the player's command matches "xxx" or the player's command matches "AW524" or the player's command matches "BR524" or the player's command matches "A1106" or the player's command matches "B1406" or the player's command matches "C2811" or the player's command matches "D1612":
			say "Beta code accepted!";
			move the player to r-Zimmer;
			stop the action.

Section 99 - Backstage

r-Backstage is a room.

A Taschentuch is a thing in r-Backstage. The printed name is "handkerchief".
The description is "A somewhat crumpled, bright white handkerchief made of some fine fabric. The initials LT have been carefully embroidered on one corner."
The Geruch of Taschentuch is "It smells of lavender and bitter tears."
Understand "handkerchief", "hankerchief", "hankie", "hanky", "hankey" as Taschentuch.
Taschentuch is not ablegbar.

Bills-Frau is a person. Bills-Frau is not proper-named.
Bills-Frau can be found. Bills-Frau is not found.

A Zwicker is a thing in r-Backstage. The printed name is "pince-nez".
Zwicker can be found. Zwicker is not found.
The description is "Ordinary pince-nez with thick, slightly milky lenses.".
Understand "pince-nez", "pincenez", "glasses" as Zwicker.

A Brecheisen is a thing in r-Backstage. The printed name is "crowbar".
The description is "A crowbar made of steel, about two feet long. Both sides are slotted, and one side is bent.".
Understand "crowbar", "crow bar", "wrecking bar", "pry bar", "prybar", "pinch bar", "prise bar", "prisebar", "gooseneck", "pig bar", "jemmy bar" as Brecheisen.
Brecheisen is sperrig.

A Schaufel is a thing in r-Backstage. The printed name is "shovel".
The description is "A robust-looking shovel with a wooden handle.".
Understand "shovel", "wooden shovel", "spade" as Schaufel.
Schaufel is sperrig.

Some Streichhölzer is a thing in r-Backstage. The printed name is "matches".
The description is "A considerable number of matches in a brown paper envelope.".
Understand "match", "matches", "envelope" as Streichhölzer.
Streichhölzer is wertvoll.

A Seil is a thing in r-Backstage. The printed name is "rope".
The description is "A long, thick rope, at least ten yards long.".
Understand "rope", "coiled rope" as Seil.
Instead of taking Seil:
	if Seil is angebunden:
		say "You'd rather leave it there.";
	else if Lampe is not lit and player is in r-Galgen:
		try taking Schlinge instead;
	else:
		say "You throw the coiled rope over your shoulder. Quite heavy.";
		now player has Seil;
		stop the action.
Seil can be angebunden. Seil is not angebunden.
Seil is sperrig.
For clarifying the parser's choice of the Seil: do nothing.

Podestkram is a thing in r-Backstage. The printed name is "boards".
The description is "You don't see anything special about them.".
Understand "boards", "nails", "cobwebs" as Podestkram.
Instead of taking Podestkram:
	say "You see no reason to take them with you.".

Kleidung is a thing in r-Backstage. Kleidung is wertvoll. Kleidung is wearable. Kleidung is sperrig.

The printed name is "clothing".
Understand "clothes", "clothing","outfit","shirt","linen shirt","vest","leather vest","legs","pants","woolen pants","trousers","inserts","leather inserts","boots","leather boots","bandana","hat","comboy hat", "pockets", "scarf" as Kleidung.

Instead of examining Kleidung:
	say "You're wearing a slightly tattered linen shirt with a leather vest over it. Your legs are tucked into coarse woolen pants with leather inserts at the bottom. Dusty leather boots of indeterminable color, a dark brown scarf and a simple felt cowboy hat complete this unimpressive but functional ensemble."

Instead of doing anything with Kleidung:
	say "You are not planning to put anything on or take anything off or to interact with your clothes in any way."