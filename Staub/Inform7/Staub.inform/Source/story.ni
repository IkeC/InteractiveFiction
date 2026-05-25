"Staub" by "IkeC" (in German)

Include Ext by IkeC.
Include German by Team GerX.
Include Hybrid Choices by AW Freyr.
Include Room Description Control by Emily Short.
Include Ordinary Room Description by Emily Short.
Include Basic Screen Effects by Emily Short.

The story headline is "Ein Western".
The story description is "Ein Western von IkeC".
The story creation year is 2024.

Use skip libcheck.

The Release number is 4.

Release along with cover art ("tumbleweed"), 
	the "Quixe" interpreter,
	a file of "Hinweise" called "Hinweise.html",
	a file of "Walkthrough" called "Walkthrough.txt",
	a file of "Karte" called "Karte.png",
	a file of "Flowchart" called "Flowchart.png".

Table of Staub-Status
left	central 	right
" [location]"	""	"Staub"

Rule for constructing the status line:
	fill status bar with Table of Staub-Status;
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

Section 0 - Not for release

Include Test by IkeC.

Section A - For Release only

When play begins: now Debug is false.

Section B - Global Tests

[Nach Sheriff, mit Tasche]
Test X with "nimm tasche / Test 4b / nimm tasche / raus / öffne tasche".

[Olaf: Hauptstraße]
Test Oa with "höre / schaue durch das fenster / öffne fenster / u windrad / r / u bardame / rede mit ella / 2 / 2 / 1 / 1 / 3 / hoch / nimm alles / runter / rede mit ella / 1 / 1 / 1 / 1 / trink kaffee / trink kaffee / trink kaffee / gib ella die tasse / n / w / rede mit der frau / 1 / 1 / 1 / 1 / rede mit sheriff / 1 / 1 / 1 / 1 / 1 / 1 / nimm alles / schau in tasche / öffne tasche / trage tasche / se".

[Olaf: Hauptstraße-Laden-Hauptstraße]
Test Ob with "n / rede mit bill / 2 / 4 / untersuche regale / kaufe zucker / rede mit bill / 2 / 1 / 1 / 1 / 1 / nimm zucker / frage bill nach zucker / s"

[Olaf: Hauptstraße-Sheriff-Barbier-Hauptstraße]
Test Oc with "nw / rede mit dunder / so / ne / untersuche krimskrams / rede mit papagei / nochmal / nochmal / u barbier / rede mit ihm / 1 / 1 / 2 / 1 / 1 / 2 / nimm molly / schiesse auf marten / sw"

[Olaf: Hauptstraße-Mine-Taschentuch-Hauptstraße]
Test Od with "w / w / u strauch / nimm taschentuch / u taschentuch / schau / rede mit mann / schiesse auf mann / zeige mann taschentuch / e / e"

[Olaf: Hauptstraße-Windrad-Hügelkette-Hauptstraße]
Test Oe with "w / s / klettere auf windrad / w / u steine / o / n / e"

[Olaf: Hauptstraße-Galgen-Friedhof-Hauptstraße]
Test Of with "e / u galgen / nimm seil / nimm schlinge / u podest / u sand / schaue unter podest / n / u kreuze / 1 / 2 / 3 / 4 / 5 / s / w"

[Olaf: Hauptstraße-Ella-Taschentuch-Hauptstraße]
Test Og with "s / rede mit ella / 1 / 1 / 1 / 1 / nimm geschirrtuch / n"

[Olaf: Hauptstraße-Barbier-Schaufel-Saloon-Keks-Hauptstraße]
Test Oh with "ne / rede mit marten / 2 / 2 / 2 / 2 / 2 / raus / s / x tresen / nimm keks / n"

[Olaf: Hauptstraße-Barbier-Molly-Hauptstraße]
Test Oi with "ne / gib molly den keks / nimm molly / raus"

[Olaf: Hauptstraße-Hügelkette-Hauptstraße]
Test Oj with "w / s / w / x felsen / x brocken / grabe spalt / grabe mit schaufel / grabe brocken mit schaufel / grabe brocken / grabe spalte mit schaufel / benutze schaufel mit spalte / benutze schaufel mit brocken / benutze schaufel mit steinen / stecke schaufel in spalt / e / x mast / nimm stange / n / e / lege stange / e"

[Olaf: Hauptstraße-Bill-Friedhof-Hauptstraße]
Test Ok with "n / rede mit bill / 1 / 1 / 1 / 1 / 1 / 1 / s / e / n / schau gräber / 1 / 2 / 5 / s / w / n / gib bill den zwicker / rede mit bill / 1 / 1 / 1 / i / nimm brecheisen / x brecheisen / s"

[Olaf: Hauptstraße-Höhle]
Test Ol with "w / s / w / stecke brecheisen in spalt / e / n / nimm stange / s / w / stecke stange ins loch / drücke stange / l / n / i"

Test O with "Test Oa / Test Ob / Test Oc / Test Od / Test Oe / Test Of / Test Oe / Test Og / Test Oh / Test Oi / Test Oj / Test Ok / Test Ol"

Test O2 with "Test Oa / Test Ob / Test Oc / Test Od / Test Oe / Test Of / Test Oe / Test Og / Test Oh / Test Oi"

[Kepp: Sheriff]
Test Ka with "info / x fenster / x nachttisch / p umhängetasche / n / s / w / o / x / i / öffne tasche / X einberufungsbescheid / x zeichnung / x geld / x revolver / raus / rede mit frau / 1 / 2 / 2 / 1 / 1 / 1 / trink die plörre / p keks / p kaffee / trink kaffee / x / raum / X tribüne / x balken / p lampe / raus / benutze revolver / hand / s / raus / n / w / rede mit frau / 1 / 1 / 1 / 1 / l / rede mit sheriff"

Test K with "Test Ka"

[Hannes]
Test h1 with "i / riech / p tasche / öffne tasche / u kleidung / lass kleidung fallen / hau wand / u putz / u fenster / schau durch scheibe / schließe tür / b treppe / geh treppe runter / riech / riech mich / raus / öffne schwingtür / ella, hallo / rede mit frau / 1 / 1 / 2 / 1 / 1 / 1 / raus / öffne sheriff"

Test h2 with "w / riech / rede mit frau / 1 / 1 / 1 / 1 / sitz auf pritsche / rede mit sheriff / 1 / 1 / 1 / 1 / 1 / 1 / nimm tasche / raus"

Test h3 with "n / nimm alles aus regalen / nimm schachteln / nimm dosen / sprich mit bill / 1 / 1 / 1 / 1 / 1 / 1 / kauf werkzeuge / raus"

Test h4 with "no / schau in spiegel / nimm dosen / rede mit marten / 1 / 1 / 1 / 1 / 2 / nimm schere / b martens aussehen / raus"

Test h5 with "o / u haus / b galgen / nimm sand / n / s / w / s / nimm keks / trink kaffee / rede mit ella / 1 / 1 / n"

Test h6 with "gib molly keks / rede mit molly / raus / w / sitz auf bank / geh in stall / betret koppel / nimm gras / geh ins haus / öffne tür"

Test h7 with "s / kletter windrad / kletter mast / w / durchsuche geröllfeld / o / n / w / b strauch / nimm taschentuch / b mann / sprich mit ihm / g / g / g / schiess auf mann / b karren / besteig karren / b fackel / geh in mine / o / o"

Test h8 with "nw / rede mit sheriff / 1 / 1 / raus / n / t bill / 1 / 1 / lauf barbier / t marten / 1 / 2 / 3 / 2 / 2 / 2 / nimm molly / gib molly keks / nimm molly / raus / o / grab / grab sand / grab sand mit schaufel / b platte"

Test h9 with "zieh nägel raus / zieh platte / lauf hügel / b felsen / b brocken / schau in hohlraum / b spalt / b hohlraum / greif in hohlraum / steck schaufel in spalt / lauf friedhof / u kreuz / 1 / 2 / 3 / 4 / 5 / lauf bill / t bill / 1 / 1 / 1 / 1 / 1 / 1"

Test h10 with "lauf friedhof / u kreuz / 2 / 5 / b steine / 2 / 5 / s / w / n / t bill / 1 / 1 / 1 / nimm brecheisen / lauf hügel / steck brecheisen in spalt / o / nimm stange / w / steck stange in spalt"

Test h11 with "n / n / lauf ella / t ella / 1 / 1 / 1 / 1 / nimm laterne / nimm laterne mit brecheisen / benutze brecheisen mit laterne / benutze schaufel mit laterne / schiess auf nagel / zieh nagel / n"

Test h12 with "o / benutze brecheisen mit podest / schau in öffnung / lauf ella / nimm stuhl / benutze stuhl mit lampe / nimm lampe / steig auf stuhl / nimm lampe / runter / raus"

Test h13 with "n / t bill / 1 / 1 / nimm tütchen / lauf höhle / zünde lampe an / lauf galgen / nimm schlinge / b podest / nimm tau / lauf höhle / knot tau an felsen / runter / schlag mann mit brecheisen / geh in nische / lösche lampe / puste lampe aus / rieche taschentuch".

Test h14 with "schlag mann / wirf tuch / schlag mann mit brecheisen / sprich mit lucy / 1 / 1 / öffne tasche / erschieß männer / b fässer / schieß auf fässer / b fässer / b karren / b keil / schieß auf keil / t lucy / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 1"

Test H with "Test h1 / test h2 / test h3 / test h4 / test h5 / test h6 / test h7 / test h8 / test h9 / test h10 / test h11 / test h12 / test h13 / test h14"

[Ende / Fin]
Test F1 with "x nachttisch / nimm tasche / runter / x frau / rede mit frau / 1 / 1 / 1 / 1 / 1 / 1 / x tresen / nimm keks / iss keks / trinke aus tasse / trinke tasse"

Test F2 with "raus / w / rede mit frau / 1 / 1 / 2 / rede mit dunder / 1 / 1 / 1 / 1 / 1 / 1 / nimm tasche / raus / öffne tasche / w / w / nimm tuch"

Test F3 with "o / o / no / l / x barbier / rede mit barbier / 1 / 1 / 1 / 1 / 1 / 2 / 3 / rede mit molly / rede mit molly / rede mit molly / nimm molly"

Test F4 with "i / benutze keks mit molly / nimm molly / rede mit marten / 2 / 2 / nimm molly / i / raus / w / s / x turm / nimm stange / w / x geröll / l / benutze stange mit spalt"

Test F5 with "x brocken / o / n / o / lege stange / o / n / rede mit bill / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 2"

Test F6 with  "s / o / n / x kreuz / 1 / 2 / 3 / 4 / 5 / s / w / n"

Test F7 with "rede mit bill / 1 / 1 / s / o / n / x grab / 1 / 2 / 5 / s / w / n / rede mit bill / 1 / 1 / 1 / nimm kuhfuss / s / w / nimm stange / s / w"

Test F8 with "benutze brecheisen mit spalt / benutze stange mit spalt / drücke stange / l / n / e / w / n / s / o / n / o / s"

Test F9 with "x decke / x lampe / nimm lampe / ziehe stuhl / nimm lampe / rede mit frau / 1 / 1 / 1 / 1 / 1 / benutze stuhl / nimm lampe / x lampe / schalte lampe ein / rede mit ella / 1 / 1 / n / n"

Test F10 with "rede mit Bill / 1 / 1 / nimm streichhölzer / zünde lampe an / s / w / s / w / n / n / x Abgrund / runter" 

Test F11 with "s / o / n / o / n / rede mit bill / 1 / 1 / 1 / s / no / rede mit marten / 1 / 1 / 1 / raus / o / x podest / nimm sand / w / no / rede mit marten / 1 / 1 / 1 / raus"

Test F12 with "o / benutze schaufel mit sand / x platte / benutze brecheisen mit platte / x öffnung / nimm seil / w / w / s / w / n / benutze seil mit abgrund / benutze seil mit felsen / runter"

Test F13 with "x mann / x nische / x Bottiche / x Lucy / x Michael / benutze revolver mit mann / rede mit mann / lege tuch / s / schlage mann"

Test F14 with "benutze schaufel mit geselle / rede mit wache / x wache / schau / x nische / o / hoch / rede mit paar / 1 / 1 / x eingang / x karren / x keil / l / o / l / hoch / l"

Test F15 with "benutze revolver mit männer / benutze revolver mit karren / benutze revolver mit fässer / benutze brecheisen mit mann / benutze schaufel mit thompson"

Test F16 with "benutze revolver mit keil / raus / nimm einberufungsbescheid / rede mit dunder / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 1 / schau"

Test Fin with "test F1 / test F2 / test F3 / test F4 / test F5 / test F6 / test F7 / test F8 / test F9 / test F10 / test F11 / test F12 / test F13 / test F14 / test F15 / test F16"

Test FB1 with "test F1 / raus / w / debug / rede mit frau / 1 / 1"

Test FB2 with "test F1 / test F2 / test F3 / test F4 / test F5 / test F6 / test F7 / test F8"

Test FX with "test F1 / test F2 / test F3 / test F4 / test F5 / test F6 / test F7"

Section C - Setup

To say TODO: say " (hier geht es noch nicht weiter)".

To say name-Brüder: say "Mifflin-Brüder". [Calvin und Bob]
To say name-Bürgermeister: say "Thompson". [Ron]

Shooting it with is an action applying to two visible things.
Understand "schiess mit [something] auf [something]", "schiess auf [something] mit [something]", "schiesse mit [something] auf [something]", "schiesse auf [something] mit [something]", "erschiess [something] with [something]", "erschiesse [something] with [something]" as shooting it with.
Check shooting something with something:
	if the noun is Revolver:
		try shooting the second noun;
	else if the second noun is Revolver:
		try shooting the noun;
	else:
		say "Damit kannst du nicht schießen.".

Shooting is an action applying to one thing.
Understand "schiess auf [something]", "schiesse auf [something]" as shooting.
Understand "erschiess [something]", "erschiesse [something]" as shooting.
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
				say "Darauf zu schießen würde nichts bringen.";
		else if player is in r-Gewoelbe and Geselle is bewusstlos and Lucy is not eingesperrt:
			if the noun is Keil:
				say "[Schiess-Keil-desc]";
			else:
				say "Jetzt gibt es nur ein sinnvolles Ziel.";
		else if player is in r-Gewoelbe and Geselle is not bewusstlos and Lucy is not entdeckt:
			say "Das würde ziemlich viel Aufsehen erregen. Eine unauffälligere Herangehensweise wäre wahrscheinlich sinnvoller.";
		else:
			say "[one of]Es wäre keine gute Idee auf [den noun] zu schießen[or]Die Munition solltest du dir sparen[at random].";
	else:
		say "Du hast nichts womit du schießen könntest.".

Carry out graben something with something:
	if the noun is the Sand and the second noun is the Schaufel:
		try using Schaufel on Sand;
	else if the noun is the Spalt and the second noun is the Schaufel:
		try using Schaufel on Spalt;
	else:
		say "Du kannst [den noun] nicht mit [dem second noun] graben.".

Rule for deciding whether all includes things: it does not.

Table of infinitives (continued)
	Verb		Infinitive
	"t"			"reden"

The restore the game rule response (A) is "Laden fehlgeschlagen. Das Spiel wurde möglicherweise aktualisiert, seit du gespeichert hast.[paragraph break]Bitte klicke auf [bold type]Vorversion[roman type] links (https://ikeserver.de/Staub/previous.html) und versuche erneut, deinen Spielstand zu laden.".

Section D - Benutzen

[Benutze]
Carry out using something on something:
	[Benutze Stange]
	if the noun is the Stange:
		if the player carries the Stange:
			if the second noun is the Spalt or the second noun is the Brocken:
				if Spalt is bearbeitet:
					now pg-Bill-Spalt is inactive;
					say "Du schiebst die lange Metallstange langsam in den Spalt. Passt perfekt![paragraph break]Du packst die Stange mit beiden Händen am freien Ende und drückst sie kräftig Richtung Berg. Der Brocken scheint sich leicht zu bewegen. 'BRAAAK!' krächzt Molly aufgeregt und lässt sich auf deiner Schulter nieder.[paragraph break]Du blickst dich noch einmal um - es scheint niemand in Hörweite zu sein. Mit deinem ganzen Gewicht stemmst du dich erneut gegen die Stange, und siehe da - der Brocken löst sich![paragraph break][bold type]RRRRRRRRRRRRRR...[roman type]";
					if Lampe is not allowed-to-take:
						now pg-Bill-Laterne is active;
						now pg-Barfrau-Laterne is active;
					move player to r-Flashback-2;
				otherwise: [Spalt nicht bearbeitet]
					say "Du hebelst, schiebst und fluchst, aber der Spalt ist leider nicht breit genug um die Stange hineinzuschieben. Ohne geeignetes Werkzeug kommst du hier wohl nicht weiter.";
			otherwise: [Stange mit irgendwas benutzen]
				say "Du kannst die Stange damit nicht benutzen.";
		otherwise: [not carry Stange]
			say "Du hast keine Stange.";
	[Benutze Brecheisen]
	else if the noun is the Brecheisen:
		if the player carries the Brecheisen:
			if the second noun is Lampe and player does not have Lampe:
				if Lampe is not allowed-to-take:
					say "[Der Barfrau] zieht eine Augenbraue hoch. 'Was genau soll das werden?'";
				else:
					say "Du fummelst die Lampe mit Hilfe des Brecheisens von dem Nagel herunter.";
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
					say "Du schiebst das flache, gerade Ende der Brechstange in den Spalt und hämmerst mit einem flachen Stein auf das gebogene Ende.[paragraph break]Du klopfst und hebelst eine Weile bis endlich ein flaches, handbreites Stück Fels vom Brocken abbricht. Der Spalt ist nun deutlich breiter.[paragraph break]Du steckst das Brecheisen wieder ein.";
					now Spalt is bearbeitet;
					now pg-Bill-Spalt is active;
					stop the action;
				else: [Spalt schon bearbeitet]
					say "Du hast den Spalt schon breiter gemacht. Das Brecheisen ist leider zu kurz um es als Hebel zu verwenden.";
					stop the action;
			if the second noun is the Podest:
				if Podest is not entdeckt:
					say "Du weißt nicht so recht wo du das Brecheisen hier ansetzen könntest.";
				else if Podest is geöffnet:
					say "Die Luke ist schon offen.";
				else: 
					say "Du hebelst einen Nagel nach dem anderen aus der Platte heraus, nicht ohne gelegentlich einen Fluch auszustoßen und dich lautstark zu fragen, was zur Hölle du hier eigentlich machst.
					
					Etwa eine halbe Stunde und einen abgebrochenen Fingernagel später hast du alle Nägel erfolgreich entfernt. Schweißgebadet schiebst du die Holzplatte beiseite und legst eine quadratische, dunkle Öffnung frei.";
					now Podest is geöffnet;
					now Seil is in r-Galgen;
					now Podestkram is in r-Galgen;
			otherwise: [Mit irgendwas benutzen]
				say "Du kannst das Brecheisen damit nicht benutzen.";
		otherwise: [not carry Brecheisen]
			say "Du hast kein Brecheisen.";	
	[Benutze Schaufel]
	else if the noun is the Schaufel:
		if the player carries the Schaufel:
			if the second noun is Lampe and player does not have Lampe:
				if Lampe is not allowed-to-take:
					say "[Der Barfrau] zieht eine Augenbraue hoch. 'Was genau soll das werden?'";
				else:
					say "Du fummelst die Lampe mit Hilfe der Schaufel von dem Nagel herunter.";
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
					say "Du bist mit dem Ergebnis eigentlich schon zufrieden.";
				else:
					say "Stück um Stück befreist du das Podest von dem großen Sandhaufen, während dir der Wind unerbittlich ins Gesicht peitscht.[paragraph break]Direkt unter dem Galgen wird eine stabile Holzplatte sichtbar, die gewissenhaft mit vielen großen Nägeln auf dem Podest festgenagelt wurde.";
					now Podest is entdeckt;
			else if the second noun is Spalt or the second noun is the Brocken:
				say "Das ist massiver Fels, graben bringt hier nichts. 
				
				Du könntest die Schaufel zwar in den Spalt stecken, aber der Holzstiel würde mit Sicherheit brechen wenn du sie als Hebel einsetzen wolltest.
				
				Aber prinzipiell keine schlechte Idee."; 
			otherwise: [Mit irgendwas benutzen]
				say "Du kannst [den noun] damit nicht benutzen.";
		otherwise: [not carry Schaufel]
			say "Du hast keine Schaufel.";	
	[Benutze Streichhölzer]
	else if the noun is the Streichhölzer:
		if the player carries the Streichhölzer:
			if the second noun is the Lampe:
				if the Lampe is lit:
					say "Die Lampe brennt bereits!";
				else:
					say "[desc-Lampe-an]";
					now Lampe is lit;
			otherwise: [Mit irgendwas benutzen]
				say "Du kannst [den noun] damit nicht benutzen.";
		otherwise: [not carry Streichhölzer]
			say "Du hast keine Streichhölzer.";
	[Benutze Lampe]
	else if the noun is the Lampe:
		if the player carries the Lampe:
			if the second noun is the Streichhölzer:
				if the Lampe is lit:
					say "Die Lampe brennt bereits!";
				else:
					say "[desc-Lampe-an]";
					now Lampe is lit;
			else if the second noun is the Seil:
				try using Seil on Lampe instead;
			otherwise: [Mit irgendwas benutzen]
				say "Du kannst [den noun] damit nicht benutzen.";
		otherwise: [not carry Streichhölzer]
			say "Du hast keine Streichhölzer.";
	[Benutze Seil]
	else if the noun is Seil:
		if the player carries Seil:
			if the second noun is Abgrund:
				say "Das Seil einfach so in den Abgrund zu werfen, wird vermutlich nichts bringen.";
			else if the second noun is Spitzfelsen:
				say "Du bindest das Seil um den Felsen und fixierst es mit einem ordentlichen Knoten.";
				now Seil is angebunden;
				now Seil is in r-Hoehle;
			else if the second noun is Lampe:
				say "Das Tau ist zu dick, um die Lampe daran zu knoten, und du möchtest sie eigentlich auch gar nicht aus der Hand geben.";
			otherwise: [Mit irgendwas benutzen]
				say "Du kannst [den noun] damit nicht benutzen.";
		otherwise: [not carry Seil]
			say "Du hast kein Seil.";
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
			say "Du kannst [den noun] damit nicht benutzen.";
	[Benutze Keks]
	else if the noun is Keks:
		if the second noun is Papagei:
			try giving Keks to Papagei instead;
		else: [Mit irgendwas benutzen]
			say "Du kannst [den noun] damit nicht benutzen.";
	[Benutze Stuhl]
	else if the noun is the Stuhl:
		if the second noun is Lampe or the second noun is Balken or the second noun is Nagel:
			try pulling Stuhl instead;
		else: [Mit irgendwas benutzen]
			say "Du kannst [den noun] damit nicht benutzen.";
	[Benutze Brocken]
	else if the noun is the Brocken:
		if the second noun is Brecheisen:
			try using Brecheisen on Brocken instead;
		else: [Mit irgendwas benutzen]
			say "Du kannst [den noun] damit nicht benutzen.";
	otherwise: [noun nicht bekannt]
		say "[desc-funktioniert-nicht][run paragraph on][line break]".

Section E - Random Events
[Random Events in Hauptstraße, Ranch, Galgen, Windrad, Friedhof]

To say random-event:
	Increase Visitcounter of the location by 1;
	if Visitcounter of r-Hauptstraße is 2 and player is in r-Hauptstraße and Lucy is in r-Ranch:
		say "[paragraph break]Als der Wind einmal kurz nachlässt, glaubst du für einen kurzen Moment ein leises Wimmern aus westlicher Richtung wahrzunehmen.[run paragraph on]";
	if Visitcounter of r-Hauptstraße is 5 and player is in r-Hauptstraße:
		say "[paragraph break]Eine Katze trabt gemächlich an dir vorbei, wirft dir einen müden Blick zu und verschwindet im Schatten zwischen den Häusern.[run paragraph on]";
	else if Visitcounter of r-Hauptstraße is 9 and player is in r-Hauptstraße:
		say "[paragraph break]Ein Geier setzt sich auf den Dachgiebel vor dir und betrachtet dich argwöhnisch, bevor er wieder davonfliegt.[run paragraph on]";
	else if Visitcounter of r-Hauptstraße is 13 and player is in r-Hauptstraße:
		say "[paragraph break]Ein Fensterladen fliegt mit lautem Getöse auf und eine Bettdecke wird von zwei dicken Armen kraftvoll ausgeschüttelt. Dann verschwindet die Decke in einer beeindruckenden Staubwolke und das Fenster wird krachend wieder zugeschlagen.[run paragraph on]";
	else if Visitcounter of r-Ranch is 2 and player is in r-Ranch and Lucy is in r-Gewoelbe:
		say "[paragraph break]Ein dumpfer Knall aus westlicher Richtung gefolgt von leisem Fluchen lässt dich kurz aufhorchen.[run paragraph on]";
	else if Visitcounter of r-Ranch is 4 and player is in r-Ranch:
		say "[paragraph break]Etwas zischt an deinem Kopf vorbei und landet vor dir in der Pferdekoppel. Ein kleiner Junge sprintet heran und springt über den Zaun.[paragraph break]Kurz darauf kommt er mit einem Stoffball unter dem Arm wieder zum Vorschein und rennt davon. 'Sie ham nix gesehen Mister!'[run paragraph on]";
	else if Visitcounter of r-Ranch is 7 and player is in r-Ranch:
		say "[paragraph break]Du hörst das leise Rasseln einer Klapperschlange. Als du mit gezogenem Revolver neben das Haus trittst, verschwindet sie schnell in Richtung Steppe.[run paragraph on]";
	else if Visitcounter of r-Ranch is 10 and player is in r-Ranch:
		say "[paragraph break]Ein dürrer Hund jagt keuchend in einem Affentempo an dir vorbei, ein Stück Dörrfleisch zwischen den Zähnen. Einige Häuser weiter hörst du jemanden leise fluchen.[run paragraph on]";
	else if Visitcounter of r-Galgen is 3 and player is in r-Galgen:
		say "[paragraph break]'Suchen wohl Ihre Freunde, was? Sowas wie Sie wollen wir hier nicht mehr sehen!'[paragraph break]Du blickst dich verdutzt um und siehst eine ältere Frau in einem der Häuser verschwinden, mit ihrem Gehstock wild in der Luft herumstochernd.[run paragraph on]";
	else if Visitcounter of r-Windrad is 3 and player is in r-Windrad:
		say "[paragraph break]Zwei Kojoten schleichen sich bis auf wenige Meter an dich heran. Du nimmst einen Stein und wirft ihn in ihre Richtung, woraufhin sie laut aufheulend Reißaus nehmen.[run paragraph on]";
	else if Visitcounter of r-Windrad is 6 and player is in r-Windrad:
		say "[paragraph break]Einige Kojoten scheinen dich aus einiger Entfernung zu beobachten. Du machst eine beiläufige Wurfbewegung und sie rennen davon.[run paragraph on]";
	else if Visitcounter of r-Windrad is 8 and player is in r-Windrad:
		say "[paragraph break][italic type]squieeek ... squieeeeek ...[roman type][paragraph break]Du kannst dieses verdammte Windrad langsam nicht mehr hören, geschweige denn sehen. Wofür ist das Teil überhaupt?[paragraph break]Du wischst dir den Schweiß von der Stirn und ziehst in Erwägung öfter mal zu laufen, um schneller voranzukommen.[run paragraph on]";
	else if Visitcounter of r-Friedhof is 2 and player is in r-Friedhof:
		say "[paragraph break]Ein Gecko sitzt starr auf einem der Grabkreuze und sonnt sich. Als du die Hand nach ihm ausstreckst, verschwindet er blitzartig im Gebüsch.[run paragraph on]";

Section F - Laufen

Nur-Laufen is an action applying to nothing.
Understand "geh", "lauf", "orte" as nur-laufen.
Check Nur-Laufen:
	say "Gib GEH und eine Richtung oder einen dieser bereits bekannten Orte ein: [bekannte-orte]";

Laufen is an action applying to one topic.
Understand "geh [text]", "lauf [text]", "lauf zu [text]" as laufen.

To say bekannte-orte:
	say "[line break]";
	if r-Zimmer is visited, say "- Zimmer[line break]";
	if r-Saloon is visited, say "- Saloon (Ella)[line break]";
	if r-Hauptstraße is visited, say "- Main Street[line break]";
	if r-Sheriff is visited, say "- Sheriff (Dunder)[line break]";
	if r-Laden is visited, say "- Laden (Bill)[line break]";
	if r-Barbier is visited, say "- Barbier (Marten)[line break]";
	if r-Ranch is visited, say "- Ranch[line break]";
	if r-Galgen is visited, say "- Galgen[line break]";
	if r-Friedhof is visited, say "- Friedhof[line break]";
	if r-Mine is visited, say "- Mine[line break]";
	if r-Windrad is visited, say "- Windrad[line break]";
	if r-Huegelkette is visited, say "- Hügelkette[line break]";
	if r-Hoehle is visited, say "- Höhle[line break]";
	if r-Gewoelbe is visited, say "- Gewölbe[line break]";

To say ort-unbekannt:
	say "Diesen Ort kenne ich noch nicht.[line break]";

To say ort-schon-da:
	say "Da bist du doch schon![line break]";

To say ort-stange:
	say "Mit der langen Metallstange solltest du dich in der Stadt nicht blicken lassen.[line break]";

Carry out laufen:
	if player is in r-Steppe:
		say "Es gibt kein Zurück. Dein nächstes Abenteuer wartet woanders.";
	else if player is eingesperrt:
		say "Du kannst jetzt nicht einfach abhauen.";
	else if player is in r-Gewoelbe:
		say "Du kannst jetzt nicht einfach abhauen.";
	else if "[the topic understood in lower case]" matches the text "zimmer":
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
	else if "[the topic understood in lower case]" matches the text "strasse" or "[the topic understood in lower case]" matches the text "street" or "[the topic understood in lower case]" matches the text "main":
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
	else if "[the topic understood in lower case]" matches the text "laden" or "[the topic understood in lower case]" matches the text "bill":
		if r-Laden is unvisited:
			say "[ort-unbekannt]";
		else if player has Stange:
			say "[ort-stange]";
		else if player is not in r-Laden:
			say "[desc-Laufen]";
			now player is in r-Laden;
		else:
			say "[ort-schon-da]";
	else if "[the topic understood in lower case]" matches the text "barbier" or "[the topic understood in lower case]" matches the text "marten":
		if r-Barbier is unvisited:
			say "[ort-unbekannt]";
		else if player has Stange:
			say "[ort-stange]";
		else if player is not in r-Barbier:
			say "[desc-Laufen]";
			now player is in r-Barbier;
		else:
			say "[ort-schon-da]";
	else if "[the topic understood in lower case]" matches the text "friedhof":
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
	else if "[the topic understood in lower case]" matches the text "galgen":
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
	else if "[the topic understood in lower case]" matches the text "windrad":
		if r-Windrad is unvisited:
			say "[ort-unbekannt]";
		else if player is not in r-Windrad:
			say "[desc-Laufen]";
			now player is in r-Windrad;
		else:
			say "[ort-schon-da]";
	else if "[the topic understood in lower case]" matches the text "berg" or "[the topic understood in lower case]" matches the text "hügel" or "[the topic understood in lower case]" matches the text "huegel":
		if r-Huegelkette is unvisited:
			say "[ort-unbekannt]";
		else if player is not in r-Huegelkette:
			say "[desc-Laufen]";
			now player is in r-Huegelkette;
		else:
			say "[ort-schon-da]";
	else if "[the topic understood in lower case]" matches the text "höhle" or "[the topic understood in lower case]" matches the text "hoehle":
		if r-Hoehle is unvisited:
			say "[ort-unbekannt]";
		else if player is not in r-Hoehle:
			say "[desc-Laufen]";
			now player is in r-Hoehle;
		else:
			say "[ort-schon-da]";
	else if "[the topic understood in lower case]" matches the text "gewölbe" or "[the topic understood in lower case]" matches the text "gewoelbe":
		if r-Gewoelbe is unvisited:
			say "[ort-unbekannt]";
		else if player is not in r-Gewoelbe:
			say "[desc-Laufen]";
			now player is in r-Gewoelbe;
		else:
			say "[ort-schon-da]";
	else:
		say "Diesen Ort kenne ich nicht. Bekannte Orte:[bekannte-orte]";

To say desc-Laufen:
	say "[italic type][one of]Kurze Zeit später...[or]Einige Schritte später...[or]Ein paar Minuten später...[or]Kurz darauf...[or]Kurze Zeit später...[at random][roman type]";

Test lauf with "lauf".

Section G - Start

The description of player is "Du hast schon schlimmer ausgesehen, aber ein Bad und eine Rasur könnten nicht schaden.".

The Geruch of player is "Dein letztes Bad ist schon eine Weile her, und das riecht man auch durchaus. Unangenehm auffallen solltest du damit in dieser Gegend allerdings (noch) nicht.".

When play begins:
	now the player wears Kleidung;
	now the right alignment depth is 7;
	say "[italic type]squieeeek ...[line break]squieeek ...[line break]squieeeeek ...[roman type]

Langsam wachst du auf.

Dein Kopf dröhnt erbarmungslos und das Blut pulsiert schmerzhaft in deinen Schläfen.";

Section 1 - Zimmer

r-Zimmer is a room. The printed name is "Zimmer[f]".
The description is "[if unvisited]Du hustest zweimal kräftig und raffst dich schließlich langsam von dem staubigen Dielenboden hoch.[paragraph break][end if]Dieses Zimmer ist ziemlich spärlich eingerichtet. In der Ecke steht ein [Bett] mit einem kleinen [Nachttisch]. An der gegenüberliegenden [Wand] befindet sich ein [Fenster]. Eine einfache [Holztuer] führt nach draußen und die [Saloontreppe] hinunter.[if unvisited][paragraph break]Bitte gib jetzt [bold type]INFO[roman type] ein für einige grundlegende Informationen zum Spiel, vor allem wenn du noch nie ein Textadventure gespielt hast.[end if]".
Understand "Zimmer[f]" as r-Zimmer.

r-Zimmer is inside of r-Saloon.
The Geruch of r-Zimmer is "Es riecht leicht nach Pisse, aber du hast schon an deutlich schlimmeren Orten geschlafen."

Instead of going north in r-Zimmer: try going west instead.
Instead of going south in r-Zimmer: try going west instead.
Instead of going east in r-Zimmer: try going west instead.
Instead of going northeast in r-Zimmer: try going west instead.
Instead of going northwest in r-Zimmer: try going west instead.
Instead of going southeast in r-Zimmer: try going west instead.
Instead of going southwest in r-Zimmer: try going west instead.
Instead of going west in r-Zimmer:
	say "Du könntest RAUS oder RUNTER gehen.";

A Holztuer is a door. The printed name is "Holztür[f]". 
The Holztuer is above the r-Saloon and below the r-Zimmer. It is open.
The description is "Eine Holztür mit grob gearbeiteten Scharnieren.". 
Understand "Holztuer", "Tuer", "Scharniere[p]" as Holztuer.
Instead of closing Holztuer, say "Du lässt sie lieber offen.".
Instead of opening Holztuer, say "Die Tür steht offen, geh einfach RAUS.".
Instead of using door when player is in r-Zimmer, try going down.
Instead of using door when player is in r-Saloon, try going up.

A Saloontreppe is scenery in the r-Zimmer. The printed name is "Treppe[f]". 
Instead of doing anything with the Saloontreppe, say "Die Tür steht offen, du kannst einfach RAUS gehen.".
Understand "Treppe[f]" as Saloontreppe.
Instead of using treppe, try going down.

A Nachttisch is a container in r-Zimmer. The printed name is "Nachttisch[m]". 
The description is "Ein kleiner Nachttisch mit einem offenen Fach." 
Understand "Tisch", "offenes", "Fach[n]", "Nachtisch" [sic] as Nachttisch.
The Nachttisch is fixed in place.
The Nachttisch contains a Tasche.
Instead of opening Nachttisch, try examining Nachttisch.

A Tasche is a closed openable container. The printed name is "Umhängetasche[f]". 
The description is "Eine abgewetzte Umhängetasche aus rissigem Leder.[if Tasche is closed] Sie ist geschlossen.[end if]".
Understand "Umhaengetasche", "Kram[m]", "Zeug[n]", "Sachen[p]" as Tasche.
The Tasche contains a Revolver, a Einberufungsbescheid, a Zeichnung and a Geld.
The Tasche is a player's holdall.
Instead of inserting sperrig into Tasche, say "Das passt nicht in die Tasche.".

After examining the Zeichnung for the first time:
	if player does not have Zeichnung:
		say "Du steckst die Zeichnung behutsam in die Innenseite deiner Weste.";
		now the player has the Zeichnung.

After taking the Zeichnung:
 	say "Du steckst die Zeichnung behutsam in die Innenseite deiner Weste.".

A Revolver is a thing. The printed name is "Revolver[m]".
The description is "Dein Colt Navy, Model 1861. Frisch geputzt, geladen und schussbereit."
Understand "Knarre[f]", "Colt[m]", "Schießeisen[n]", "Munition[f]", "Waffe[f]", "Pistole[f]" as Revolver.
A Revolver is wertvoll.
Instead of opening Revolver:
	say "Die Waffe ist einsatzbereit, das ist alles was du wissen musst.";

A Einberufungsbescheid is a thing. The printed name is "Einberufungsbescheid[m]". 
The description is "Ein Einberufungsbescheid für Thomas Marshall, laut Datum über fünf Jahre alt. Ein wichtiges Dokument, das du immer bei dir trägst, weist es dich doch als ehemaligen Armeeangehörigen aus. Außerdem kannst du deinen Namen nachschauen, wenn die Nacht mal wieder etwas heftig war."
Understand "Bescheid[m]", "Papiere[p]", "Brief[m]" as Einberufungsbescheid.
A Einberufungsbescheid is wertvoll.
Instead of taking the Einberufungsbescheid when Einberufungsbescheid is in Tasche:
	say "Du lässt die Papiere lieber in deiner Tasche.".

A Zeichnung is a thing. The printed name is "Zeichnung[f]".
The description is "Eine gefaltete Kohlezeichnung, an den Kanten schon leicht brüchig. Sie zeigt Claire, deine Frau.[paragraph break]Sie fehlt dir so sehr."
Understand "Bild[n]" as Zeichnung.
A Zeichnung is wertvoll.

A Geld is a thing. The printed name of the Geld is "Geld[n]". 
Geld is fixed in place. The special indefinite article of Geld is no article.
The description of the Geld is "Etwa [Geldbetrag in words] Dollar.".
Understand "Dollar" as Geld. 

A Geld is wertvoll.
Instead of taking Geld: say "Du lässt das Geld lieber in [dem Tasche]."

Geldbetrag is a number that varies. Geldbetrag is 12.

A Bett is scenery in r-Zimmer. The printed name is "Bett[n]". 
The description is "Ein karges Bett, auf dem eine fleckige dünne [Matratze] liegt."
Understand "Ecke[f]" as Bett.
Instead of using Bett:
	say "Du bist nicht müde. Nur kaputt.";

A Fenster is scenery in r-Zimmer. The printed name is "Fenster[n]". 
The description is "Fahles Licht dringt durch die staubige Glasscheibe des Fensters. Draußen glaubst du ein [Windrad-Zimmer] zu erkennen." 
Understand "Scheibe[f]" as Fenster.
Instead of using Fenster, try opening Fenster.
Instead of opening Fenster, say "Ist zugenagelt. Vielleicht hat hier der eine oder andere früher seine Zeche nicht bezahlt und ist so abgehauen.".

A Wand is scenery in r-Zimmer. The printed name is "Wand[f]". 
The description is "Wand und Decke mögen einmal weiß gewesen sein, aber inzwischen wird der graue und rissige Putz nur noch von gutem Willen aufrecht gehalten."
Understand "Putz[m]", "Decke[f]" as Wand.

A Boden is scenery in r-Zimmer. The printed name is "Boden[m]". 
The description is "Einen Besen oder gar Wasser hat dieser Boden schon lange nicht mehr gesehen. An vielen Stellen scheint das Licht des darunter liegenden Raumes durch die Dielen."
Understand "Dielen[f]", "Dielenboden" as Boden.

A Windrad-Zimmer is scenery in r-Zimmer. The printed name is "Windrad[n]". 
The description is "Ein großes Windrad aus Metall dreht sich rhythmisch quietschend im Wind. Das Geräusch ist gerade nur schwer zu ertragen.". 
Understand "Windrad", "Rad" as Windrad-Zimmer.

A Matratze is scenery in r-Zimmer. The printed name is "Matratze[f]". 
The description is "Matratze ist ein ziemlich großes Wort für diese beiden grob zusammengenähten Stoffbahnen. Einzelne Strohhalme drücken sich überall durch die Nähte und Löcher im Stoff.".
Understand "Matratze[f]", "Stroh[n]", "Strohhalm[m]", "Strohhalme[p]", "Stoff[m]", "Loecher[p]", "Stoffbahn[f]", "Stoffbahnen[p]" as Matratze.

Instead of Keine-Lust-Aktion-With Matratze:
	say "Diese widerliche Matratze ablecken? Das würde vielleicht dein etwas wunderlicher Halbcousin machen, aber sicher nicht du.[paragraph break]Wie hieß er noch gleich... John? Joseph? Jonah? Du kommst einfach nicht drauf.";

Instead of listening to r-Zimmer:
	say "[italic type]squieeek ...[line break]squieeek ...[line break]squieeeeek ...[roman type][line break]".

Instead of listening to r-Windrad:
	say "[italic type]squieeek ...[line break]squieeek ...[line break]squieeeeek ...[roman type][line break]".

Test 1 with "l / x fenster / x rad / x wand / x boden / x bett / x matratze / x tuer / x nachttisch / x tasche / oeffne tasche / x revolver / x bescheid / x geld / zähl munition / nimm revolver / öffne / klopf gegen fenster"

[Nur das Nötigste und raus]
Test 1b with "nimm tasche / oeffne tasche / runter / raus".

Section 2 - Saloon

r-Saloon is a room. The printed name is "Saloon[m]".
The description is "[if unvisited]Du schlurfst die Treppe hinunter und massierst dabei deine schmerzende linke Schulter.[paragraph break][end if]Der Saloon besteht aus einigen runden [Tische]n mit Stühlen und einer kleinen [Buehne]. Daneben führt eine [Treppe] hoch in dein Zimmer. Gegenüber befindet sich ein langer [Tresen]. Zwei massive [Balken] verlaufen unter der Decke. Eine [Schwingtuer] im Norden führt nach draußen.[paragraph break]Hinter der Bar steht [ein Barfrau] und [Barfrau-action].[if unvisited] Sie wirft dir einen leicht amüsierten Blick zu.[end if][if Keks is on the Tresen and Keks is not genommen and Ladentuer is unlocked] Sie schaut auf.[paragraph break]'Willst du deinen Keks denn gar nicht?'[end if]".
Understand "Saloon[m]" as r-Saloon.

The Geruch of r-Saloon is "Es riecht nach verschüttetem Bier und alten Zigaretten."

Instead of going outside in r-Saloon, try going north.

Instead of going down in r-Saloon when player is on Stuhl, try climbing the Stuhl.

Before going north in r-Saloon:
	if player does not have Tasche:
		say "Du hast dein Zeug noch oben. Außerdem könntest du erstmal einen Kaffee vertragen." instead;

To say Barfrau-action: say "[one of]poliert Gläser mit einem mäßig sauber wirkenden Stofflappen[or]wischt gelangweilt den Tresen[or]sortiert die Getränke[or]dreht sich eine Zigarette[or]kratzt sich am Kinn[or]schnäuzt in ihr Geschirrtuch[or]reinigt die Spüle[or]zieht an ihrer Zigarette[at random]"

A Tische is scenery in r-Saloon. The printed name is "Tische[p]".
The description is "Einige runde Holztische stehen wahllos verteilt im Raum.[if r-Hauptstraße is unvisited] Zwei der Tische sind umgekippt.[end if]".
Understand "Tisch[m]" as Tische.
Instead of doing anything except examining with Tische:
	say "Ich glaube, [der Barfrau] will sich selbst darum kümmern.".

A Stuhl is a supporter in r-Saloon. The printed name is "Stuhl[m]".
Stuhl is pushable between rooms.
Stuhl can be moved or unmoved. Stuhl is unmoved.

The description is "Unauffällige Holzstühle und Hocker, einige notdürftig mit dünnen Brettern zusammengeflickt.[if r-Hauptstraße is unvisited][desc-unvisited][run paragraph on][end if]".
Understand "Stuhl[m]", "Hocker[m]", "Stuehle[p]" as Stuhl.

Instead of taking the Stuhl:
	say "Zum Mitnehmen sind die Stühle zu sperrig, aber bewegen kannst du sie bestimmt."

Instead of pushing or pulling the Stuhl:
	say "[if Stuhl is unmoved]Du stellst einen der Stühle unter den Deckenbalken mit der Laterne[else]Die Stühle stehen jetzt gut so[end if].";
	now Stuhl is moved.

Instead of using or entering or climbing the Stuhl:
	If Stuhl is unmoved:
		say "So wie die Stühle gerade stehen siehst du keinen Grund dazu.";
	else if player is not on Stuhl:
		say "Du steigst auf den Stuhl unter dem Balken.";
		now player is on Stuhl;
	else if player is on Stuhl:
		say "Du steigst von dem Stuhl herunter.";
		now player is in r-Saloon.

To say desc-unvisited: say " Ein paar davon liegen zersplittert neben dem Eingang.[paragraph break]'Ich wollte dich noch ausschlafen lassen, bevor ich das Chaos hier beseitige', sagt [if Barfrau is proper-named]Ella[else]die Frau[end if]."

A Buehne is a supporter in r-Saloon. The printed name is "Bühne[f]".
The description is "Ein schmuckloses Holzpodest, das wohl schon oft als Schauplatz für mittelmäßige Tanzeinlagen und so manche Schlägerei herhalten musste.".
Understand "Podest[n]", "Holzpodest[n]", "Tribuene[f]" as Buehne.
Instead of entering Buehne, say "Du kennst ein paar echte Schenkelklopfer, aber das Publikum ist gerade etwas dürftig.".

A Treppe is scenery in r-Saloon. The printed name is "Treppe[f]".
The description is "Die Treppe führt hinauf in dein gemietetes Zimmer und andere Räume, die du nicht betreten darfst.".
Instead of doing anything except examining with the Treppe:
	say "Du kannst einfach hoch gehen.".

A Tresen is a supporter in r-Saloon. The printed name is "Tresen[m]".
The description is "Der Tresen hat einige dunkle Stellen und kleinere Schnitzspuren gelangweilter Gäste, sieht aber insgesamt recht sauber aus.".
Understand "Bar[f]" as Tresen.
Instead of entering Tresen, say "Das würde Ella nicht gefallen.".

A Barstuff is scenery in r-Saloon. The printed name is "Interieur des Saloons[n]". Barstuff is unwichtig.
Understand "Spuele[f]", "Getraenke[p]", "Glaeser[p]" as Barstuff.

Some Schnitzereien are a thing in r-Saloon. They are unwichtig.
Understand "Schnitzereien", "Schnitzspuren", "Spuren" as Schnitzereien.

A Balken is scenery in r-Saloon. The printed name is "Balken[p]".
The description is "Mächtige Holzbalken stützen die Decke des großen Raumes. An einem der Balken ist ein langer Nagel eingeschlagen[if player does not have Lampe], daran baumelt eine Petroleumlampe[end if].".
Understand "Decke[f]", "Holzbalken", "Querbalken", "Deckenbalken" as Balken.
Instead of climbing Balken, say "Viel zu hoch.".

A Nagel is a thing in r-Saloon. The printed name is "Nagel[m]".
The description is "Ein langer, rostiger Nagel, tief in einen der Deckenbalken geschlagen. Der bleibt da drin bis irgendwann der Saloon zusammenfällt.".
Instead of doing anything except examining with the Nagel:
	say "Du kommst nicht ran, und eigentlich willst du ihn auch gar nicht.".

A Lampe is a thing in r-Saloon. The printed name is "Lampe[f]".
Lampe can be lit. Lampe is not lit.
Lampe is sperrig.
Lampe can be allowed-to-take. Lampe is not allowed-to-take.
The description is "Eine große Petroleumlampe mit Henkelgriff. Sie ist [if Lampe is lit]an[else]aus[end if].".
Understand "Petroleumlampe", "Laterne", "Henkelgriff[m]" as Lampe.

Instead of taking the Lampe:
	if player has Lampe:
		say "Du hast sie doch schon!";
	else if Stuhl is unmoved:
		say "Du kommst so nicht ganz ran, die Lampe hängt etwas zu hoch.";
	else if Lampe is not allowed-to-take:
		say "[Der Barfrau] zieht eine Augenbraue hoch. 'Was genau soll das werden?'";
	else if player is not on Stuhl:
		say "Wenn du auf den Stuhl steigst, kannst du die Lampe jetzt wahrscheinlich erreichen.";
	else:
		say "Du nimmst die Lampe an dich.";
		now player has Lampe;
		now pg-Barfrau-anzünden is active;
		now pg-Bill-anzünden is active;
		now pg-Bill-Laterne is inactive.

Instead of switching on the Lampe, try burning the Lampe.
Instead of switching off the Lampe:
	say "Du lässt sie lieber brennen. Ist so schön behaglich.".

Instead of burning the Streichhölzer:
	say "Du zündest ein Streichholz an. Es lodert kurz hell auf und geht schnell wieder aus.[paragraph break]Vielleicht solltest du die Streichhölzer lieber verwenden um etwas anderes damit anzuzünden.";

Instead of burning the Lampe:
	if player does not have Lampe:
		say "Du hast keine Lampe.";
	else if player does not have Streichhölzer:
		say "Du hast nichts, um die Lampe anzuzünden.";
	else if Lampe is lit:
		say "Die Lampe brennt bereits!";
	else:
		say "[desc-Lampe-an]";
		now Lampe is lit;

To say desc-Lampe-an:
	say "Du nimmst eines der Schwefelhölzer und reißt es an deinem schartigen Daumennagel an. Behutsam hältst du es an den Docht der Lampe. Ein behagliches Licht breitet sich aus.[line break]";

A Kaffeetasse is a thing. The printed name is "Kaffeetasse[f]".
The Kaffeetasse is fixed in place. The Kaffeetasse can be full, 70full, 30full, or empty. It is full.
The description is "[if Kaffeetasse is empty]Eine leicht ramponierte Kaffeetasse. Sie ist leer.[else]Eine leicht ramponierte Kaffeetasse mit starkem schwarzem Kaffee darin.".
Understand "Kaffe[m]", "Tasse", "Kaffee[m]", "Ploerre[f]" as Kaffeetasse.

Instead of taking Kaffeetasse: 
	say "[Der Barfrau] zieht eine Augenbraue hoch. 'Die Tasse bleibt hier!'".

Instead of drinking Kaffeetasse: 
	if Kaffeetasse is full: 
		now the Kaffeetasse is 70full; 
		say "Du nimmst einen kleinen Schluck. Nicht übel.";
	else if Kaffeetasse is 70full: 
		now the Kaffeetasse is 30full; 
		say "Du nimmst einen weiteren Schluck. Du fühlst dich schon viel besser.";
	else if Kaffeetasse is 30full: 
		now the Kaffeetasse is empty; 
		say "Du trinkst den Kaffee aus.";
	else if Kaffeetasse is empty: 
		now the Kaffeetasse is empty; 
		say "Die Tasse ist leer.".

A Keks is a thing. The printed name is "Keks[m]".
The description is "Es ist ein Keks.".
Understand "Keks" as Keks.
A Keks can be genommen. Keks is not genommen.
Instead of eating the Keks:
	say "Den hebst du dir besser für später auf.".
Instead of taking the Keks:
	if player has Keks:
		say "Du hast ihn doch schon!";
	else:
		say "Du packst den Keks vorsichtig ein.";
	now Keks is genommen;
	now player has the keks;
	stop the action.

A Schwingtuer is a door in r-Saloon. The printed name is "Schwingtür[f]".
The description is "Eine halbhohe Schwingtür bestehend aus zwei Holzflügeln.".
Understand "Tuer", "Fluegel" as Schwingtuer.
The schwingtuer is open.
The Schwingtuer is north of r-Saloon and south of r-Hauptstraße.
Instead of opening or closing the Schwingtuer:
	say "Das ist eine Schwingtür, du kannst einfach durchgehen."

A Barfrau is a woman in r-Saloon. The printed name is "Frau[f]".
The description of Barfrau is "[if Barfrau is not proper-named]Die Frau hinter dem Tresen heißt Ella, ihr kennt euch noch von früher. [end if]Sie ist ungefähr Ende vierzig, eine korpulente, attraktive Frau mit Lachfalten und schwieligen Händen. Sie hat ein dunkelrotes Stofftuch um die Stirn gebunden und [Barfrau-action].".
Understand "Frau", "Ella[f]", "Bardame[f]" as Barfrau.
Barfrau can be examined.

The Barfrau-Aussehen is scenery in r-Saloon. The printed name is "Ellas Aussehen[n]". The Barfrau-Aussehen is proper-named. It is unwichtig.
Understand "Tuch", "Kopftuch", "Stofftuch", "Falten[p]", "Lachfalten[p]", "Stirn[f]", "Haende[p]", "Geschirrtuch", "Zigarette[f]" as Barfrau-Aussehen.
Instead of doing anything except examining with Barfrau-Aussehen:
	say "Lass [den Barfrau] besser in Ruhe.".

After examining the Barfrau for the first time:
	re-genderise the Barfrau to "Ella[f]", as proper-named;
	now Barfrau is examined.

Instead of using something on Barfrau:
	say "Rede einfach mit [dem Barfrau]. Wenn du glaubst, jemandem etwas zeigen zu können, wirst du darüber sprechen können.".

After telling the Barfrau about:
	if player is on Stuhl:
		say "Falls du nicht gerade eine Rede halten willst, solltest du vielleicht erst von dem Stuhl steigen.";
	else:
		populate choice lists for pg-Barfrau-menu;
		if assigned index is greater than 1:
			now assigned index is 0;
			clear choices;
			say "Was möchtest du zu [dem Barfrau] sagen?";
			switch to cyoa at pg-Barfrau-menu;
		else:
			now assigned index is 0;
			clear choices;
			say "Du hast [dem Barfrau] gerade nichts zu sagen.";

pg-Barfrau-menu is a page.

pg-Barfrau-ella is a page.
"[if Barfrau is not examined]Die Frau hinter dem Tresen heißt Ella, ihr kennt euch noch von früher.[paragraph break][end if]'Mir geht's ganz gut, danke. So leicht bringt mich hier nichts mehr aus der Fassung, so [']ne kleine Kneipenschlägerei jedenfalls nicht.'"
The cdesc is "'Alles klar bei dir?'" It is for pg-Barfrau-menu. It is a dead-end. It is one-off.
A page-toggle rule for pg-Barfrau-ella: 
	re-genderise the Barfrau to "Ella[f]", as proper-named;
	now pg-Barfrau-schlaegerei is active.

pg-Barfrau-saloon is a page. 
"'Ist gestern noch hoch hergegangen hier, als du schon oben warst. Ich räume das später auf.', sagt [der Barfrau]. 'Du siehst ganz schön fertig aus, willst du einen Kaffee? Hab['] direkt einen aufgebrüht, als ich dich hab['] aufstehen hören.'"
The cdesc is "'Sieht ja wild aus hier.'" It is for pg-Barfrau-menu. It is a dead-end. It is one-off.
A page-toggle rule for pg-Barfrau-saloon: 
	now pg-Barfrau-kaffee is active.

pg-Barfrau-kaffee is a page. 
"[if player has Tasche][Der Barfrau] dreht sich um und gießt eine tiefschwarze dampfende Brühe aus einem kleinen Blechtopf in eine Tasse und stellt sie vor dir auf den Tresen.

'Wohl bekomm's, macht [']nen Vierteldollar. Zucker ist leider aus, aber [']n Keks hab['] ich noch.'

[Der Barfrau] legt einen Keks neben die Tasse. Du legst das Geld hin, steckst die Nase tief in die Tasse und atmest einmal tief ein. Herrlich.[else]'Hast dein Zeug oben gelassen? Du weißt ja, keine Haftung und so.[page-told]'[end if]".
The cdesc is "'[if player has Tasche]Einen Kaffee bitte.[else]Hab['] leider kein Geld bei mir.[end if]'". 
It is for pg-Barfrau-menu. It is a dead-end. It is inactive.

A page-toggle rule for pg-Barfrau-Kaffee: 
	if player has Tasche:
		now The Kaffeetasse is on the Tresen;
		now The Keks is on the Tresen;
		now pg-Barfrau-Kaffee is inactive.

pg-Barfrau-schlaegerei is a page. 
"'Keine Ahnung wer diesmal angefangen hat. Die [name-Brüder] haben mal wieder ordentlich gesoffen und mit ihren Scheinen gewedelt, aber natürlich nichts springen lassen.'

[Der Barfrau] zuckt mit den Schultern und lächelt. 'Denke das wird einigen nicht gefallen haben.'"
The cdesc is "'Es gab [']ne Schlägerei?'" It is for pg-Barfrau-menu. It is a dead-end. It is inactive.
A page-toggle rule for pg-Barfrau-schlaegerei: 
	now pg-Barfrau-name-Brüder is active;
	now pg-Barfrau-schlaegerei is inactive.

pg-Barfrau-name-Brüder is a page. 
"'Ach du kennst die [name-Brüder] gar nicht? Dann sind die damals wohl erst aufgetaucht, als du schon aus der Stadt warst. Calvin und Bob heißen die, haben die alte Mine drüben im Westen wieder in Betrieb genommen und offenbar tatsächlich wieder was gefunden.'

[Der Barfrau] hält kurz inne und zieht einmal kräftig an ihrer Zigarette.

'Jedenfalls haben sie offenbar genug Kohle, um sich hier regelmäßig volllaufen zu lassen. Mir soll[']s recht sein.'"
The cdesc is "'Mifflin? Sagt mir nichts.'" It is for pg-Barfrau-menu. It is a dead-end. It is a one-off. It is inactive.

pg-Barfrau-lucy is a page.
"'Lucy? Wieso?'

Du erzählst [dem Barfrau] kurz, was passiert ist.

'Verdammter Mist. Lucy hab['] ich zuletzt vor ein paar Tagen gesehen, aber Michael war gestern hier. Hab['] ihn mit ein paar Leuten aus der Mine tuscheln sehen, dann weiß ich nicht mehr. Ist bestimmt vor der Schlägerei abgehauen, ist ja nicht so sein Ding.'"
The cdesc is "'Hast du Lucy gesehen?'" It is for pg-Barfrau-menu. It is a dead-end. It is a one-off. It is inactive.

pg-Barfrau-Taschentuch is a page.
"Du zeigst [dem Barfrau] das Taschentuch mit dem Monogramm.

'Ja, das gehört bestimmt ihr. Wo hast du das gefunden?'"
The cdesc is "'Ich glaube, ich habe Lucys Taschentuch gefunden.'" It is for pg-Barfrau-menu. It is a dead-end. It is a one-off. It is inactive.
A page-toggle rule for pg-Barfrau-Taschentuch:
	now pg-Barfrau-mine is active.

pg-Barfrau-mine is a page.
"[if Barfrau is proper-named]Ellas[else]Ihr[end if] Gesicht verdunkelt sich.

'Das gefällt mir gar nicht. Sie würde niemals freiwillig in die Mine gehen, sie hatte schon als Kind Angst davor.'

Sie zieht nervös an ihrer Zigarette und blickt dir fest in die Augen.

'Tom, du musst da rein. Ich glaube, der Eingang ist zu gut bewacht. Es gab mal einen Stollen im Süden, aber der wurde vor einigen Jahren von einem Haufen Geröll begraben.'"
The cdesc is "'Vor der Mine westlich von hier.'" It is for pg-Barfrau-menu. It is a dead-end. It is a one-off. It is inactive.

pg-Barfrau-Laterne is a page.
"[if Brocken is entfernt]Du erzählst [dem Barfrau] kurz von dem Stolleneingang, den du freigelegt hast. Sie lächelt und nickt.[paragraph break][end if]'Kannst die Lampe gerne mitnehmen, aber bis heute Abend will ich sie zurück!'"
The cdesc is "'Kann ich die Lampe da haben?'" It is for pg-Barfrau-menu. It is a dead-end. It is a one-off. It is inactive.
A page-toggle rule for pg-Barfrau-Laterne: 
	now Lampe is allowed-to-take.

pg-Barfrau-anzünden is a page.
"[Der Barfrau] runzelt die Stirn. 'Meine Zündhölzer sind fast alle, und ohne Feuer raucht sich[']s schlecht.' 

Sie pustet eine beeindruckende Rauchwolke über dich hinweg und deutet zur Tür. 'Bill hat bestimmt noch welche, kannst mir gerne welche mitbringen.'"
The cdesc is "'Hast du auch etwas, womit ich die Lampe anzünden kann?'" It is for pg-Barfrau-menu. It is a dead-end. It is a one-off. It is inactive.

pg-Barfrau-Abgrund is a page.
"[Der Barfrau] schüttelt den Kopf. 'Nee Tom, seit dem Rodeo-Vorfall neulich sind Seile bei mir verboten.' 

Sie grinst schelmisch. 'Frag['] doch mal den alten Bill.'"
The cdesc is "'Ich muss die Mine runterklettern. Hast du ein Seil oder sowas?'". It is for pg-Barfrau-menu. It is a dead-end. It is a one-off. It is inactive.

pg-Barfrau-end is a page. 
The cdesc is "Gespräch beenden". It is for pg-Barfrau-menu. It is an end-page.

Test 2 with "runter / x treppe / x bühne / x stuehle / x frau / l / n / s / x stuehle".
Test 2b with "raus / rede mit frau / 1 / 1 / 1 / 2 / 2 / 2 / rauf / nimm tasche / oeffne tasche / runter / rede mit frau / 1 / 1 / x tresen / nimm keks / iss keks / trinke aus tasse / trinke tasse".

Section 3 - Main Street

r-Hauptstraße is a room.
The printed name is "Main Street[f]".
The description is "[if unvisited]Du trittst durch die Schwingtür vor den Saloon. Ein kleines [Vordach] schützt dich vor der sengenden [Sonne]. Ein unangenehm heißer Wind trägt einen dornigen Steppenläufer langsam aus der Stadt hinaus. Es ist kein Mensch zu sehen.[paragraph break][end if]Die breite, staubige Straße verläuft von Osten nach Westen. [desc-gebaeude] Im Süden geht es in den Saloon.[random-event]".
[It is north from r-Saloon.] It is outside of r-Saloon.
Understand "Straße[f]", "Platz[m]", "Main Street[f]" as r-Hauptstraße.
The Geruch of r-Hauptstraße is "In der heißen und staubigen Vormittagsluft vermischen sich viele nicht näher identifizierbare Gerüche - die meisten davon nicht sehr angenehm.".

To say desc-gebaeude:
	if Gebaeude is not examined:
		say "Drei ähnlich aussehende Gebäude aus Holz liegen auf der gegenüberliegenden Straßenseite im Norden.[run paragraph on]";
	else:
		say "Im Nordwesten liegt das Büro des Sheriffs, im Norden der Gemischtwarenladen und im Nordosten der Barbier.[run paragraph on]".

Gebaeude is scenery in r-Hauptstraße. Gebaeude can be examined. Gebaeude is not examined.
The printed name is "Gebäude[p]".
The description is "Das Gebäude im Nordwesten ist offenbar das Büro des Sheriffs. Im Norden befindet sich ein Gemischtwarenladen und daneben im Nordosten hat ein Barbier sein kleines Geschäft.".
Understand "Haeuser", "Strasse","Strassenseite" as Gebaeude.

After examining Gebaeude:
	now Gebaeude is examined.

A Vordach is scenery in r-Hauptstraße. The printed name is "Vordach[n]".
The Vordach is unwichtig.
Understand "Dach" as Vordach.

A Sonne is scenery in r-Hauptstraße. The printed name is "Sonne[f]".
The description is "In die Sonne zu schauen ist schon unter normalen Umständen nicht sonderlich schlau, aber mit deinem Brummschädel erst recht nicht.".
Instead of taking Sonne:
	say "Du nimmst die Sonne und steckst sie in die Tasche.[paragraph break].[line break].[line break].[paragraph break]Wird langsam ein bisschen warm. Du stellst die Sonne schnell zurück."

A Hauptstraße is scenery in r-Hauptstraße. The printed name is "Main Street[f]".
The Hauptstraße is unwichtig.
Understand "Straße", "Weg[m]" as Hauptstraße.

A Steppenlaeufer is scenery in r-Hauptstraße. The printed name is "Steppenläufer[m]".
The description is "Der Steppenläufer ist bereits nicht mehr zu erkennen. Andere werden kommen und seinen Platz einnehmen.".
Understand "Wuestenlaeufer" as Steppenlaeufer.

A Buero is scenery in r-Hauptstraße. The printed name is "Büro[n]". 
"Das Büro von Sheriff Dunder ist gleichzeitig auch seine Wohnung. Eine Katze liegt faul in dem langsam kürzer werdenden Schatten neben dem Haus."
Understand "Buero[n]", "Eingangstuer[f]" as Buero.
Instead	of opening Buero when Sherifftuer is locked:
	say "Die Eingangstür zum Büro des Sheriffs ist verschlossen.".

A Gemischtwarenladen is scenery in r-Hauptstraße. The printed name is "Gemischtwarenladen[m]".
"Über dem Gemischtwarenladen hängt ein Schild mit der Aufschrift 'Bills Waren & Mehr'. Du fragst sich was das Mehr als Waren sein könnte."
Understand "Laden[m]", "Gemischtwarenladen[m]" as Gemischtwarenladen.

A Barbierladen is scenery in r-Hauptstraße. "Der Laden des Barbiers ist durch eine kleine rot-weiß-blaue Säule neben der Tür gekennzeichnet."
The printed name is "Barbier[m]".
Understand "Barbier", "Frisör", "Friseur" as Barbierladen.

A Hauptstraße-Fenster is scenery in r-Hauptstraße. The printed name is "Fenster[n]". The Hauptstraße-Fenster is unwichtig. Understand "Fenster[n]" as Hauptstraße-Fenster.

A Saeule is scenery in r-Hauptstraße. "Wenn der Wind stark weht, dreht sie sich sogar ein bisschen."
The printed name is "Säule[f]".

A Katze is an animal in r-Hauptstraße. "Sie würdigt dich keines Blickes."
The printed name is "Katze[f]".
Instead of telling the Katze about, try pushing the Katze.
Instead of kissing the Katze, try pushing the Katze.
Instead of pushing the Katze, say "'Miau!'[line break]".

A Geier is verschwunden and scenery in r-Hauptstraße. The printed name is "Geier[m]".
A Decke is verschwunden and scenery in r-Hauptstraße. The printed name is "Decke[f]".
A Staubwolke is verschwunden and scenery in r-Hauptstraße. The printed name is "Staubwolke[f]".


Test 3 with "runter / raus / x Gebaeude / n / s / x Gebaeude / x Sheriff / x Laden / x Barbier / x Saeule / x Katze".

Test 3b with "nimm tasche / runter / raus / x Gebaeude / x Sheriff / x Laden / x Barbier / x Saeule / x Katze / x geier / x Decke".

Section 4 - Sheriff

r-Sheriff is a room.
The printed name is "Büro des Sheriffs[n]".
The description is "[desc-r-Sheriff][run paragraph on]".
The Geruch of r-Sheriff is "Es riecht leicht modrig und bei den Pritschen auch nach diversen Exkrementen. Kein Ort an dem man sich freiwillig lange aufhalten möchte.".

r-Hauptstraße is outside of r-Sheriff.
Understand "Buero[n]", "Zimmer[n]", "Raum[m]" as r-Sheriff.

Instead of going south in r-Sheriff, try going southeast.

Instead of going to r-Sheriff when Sherifftuer is locked:
	say "Die Eingangstür zum Büro des Sheriffs ist verschlossen.".

To say desc-r-Sheriff:
	if Michael is in r-Sheriff:
		say "Du liegst auf einer der Pritschen im Büro des Sheriffs. In der Ecke sitzen Michael und Lucy, der junge Mann trägt einen leicht blutigen Verband um den Kopf. Sheriff Dunder sitzt hinter seinem Schreibtisch.[run paragraph on]";
	else:
		say "Dies ist Sheriff Dunders Büro. [if player is eingesperrt]Du stehst vor einer der beiden [Pritschen] die an einer der [Waende] befestigt sind[else]Zwei [Pritschen] sind an der Wand befestigt[end if].[paragraph break]Auf der gegenüberliegenden Seite steht ein massiver [Schreibtisch][if player is not eingesperrt], dahinter sitzt [Sheriff]. Er hat den Hut tief ins Gesicht gezogen und scheint vor sich hin zu dösen[end if]. Ein [Durchgang] führt offenbar tiefer ins [Haus] hinein. Eine breite Tür im Süden führt nach draußen.[run paragraph on]".

A Sherifftuer is a door in r-Sheriff. The printed name is "Tür zum Sheriff[f]".
The description is "Die Eingangstür zu Dunders Büro.".
The Sherifftuer is southeast of r-Sheriff and northwest of r-Hauptstraße.
Understand "Tuer", "Tuere", "Tuer zum Sheriff[f]" as Sherifftuer.
Sherifftuer is locked.

A Pritschen is scenery in r-sheriff. The printed name is "Pritschen[p]".
The description is "Einfache Holzpritschen zum Sitzen oder Liegen. Sie haben sicher schon einige Banditen und/oder Schnapsdrosseln gesehen und stinken widerlich.".
Understand "Bank[f]", "Pritsche[f]" as Pritschen.
The Geruch of Pritschen is "Es riecht nach diversen Es riecht nach diversen unappetitlichen Exkrementen."
Instead of entering Pritschen:
	say "Du hast keine Lust dich weiter auszuruhen. Davon abgesehen sind die Pritschen ziemlich widerlich."

Some Waende is scenery in r-sheriff. The printed name is "Wände[-n][p]".
Waende is unwichtig.
Understand "Wand[f]" as Waende.

A Schreibtisch is a supporter in r-sheriff. The printed name is "Schreibtisch[m]".
Schreibtisch is fixed in place.
The description is "Ein mächtiger Schreibtisch aus dunklem Holz.".
Understand "Tisch[m]" as Schreibtisch.

A Durchgang is scenery in r-sheriff. The printed name is "Durchgang[m]".
The description is "Ein niedriger Durchgang, der vermutlich zu Arrestzellen und den privaten Räumen des Sheriffs führt. Dunder wird dich da nicht reinlassen, und nichts da hinten wirst du sehen oder brauchen.".
Instead of doing anything except examining with Durchgang, try examining Durchgang.

A Haus is scenery in r-sheriff. The printed name is "Haus[n]".
The description is "Du glaubst nicht, dass du noch mehr von dem Haus sehen wirst. Oder möchtest.".

Instead of going south from r-sheriff, try going outside.
Instead of going southeast from r-sheriff, try going outside.

Before going outside from r-sheriff:
	 if Michael is in r-Sheriff and player is eingesperrt:
		say "Dir wird schwindelig als du versuchst von der Pritsche aufzustehen. Der Sheriff eilt herbei und legt dir freundlich, aber bestimmt eine Hand auf die Schulter.
		
		'Langsam, Junge. Ich denke hier gibt es noch ein paar Dinge zu besprechen.'" instead;
	else if the player is eingesperrt:
		say "Der Sheriff knurrt ungehalten. 'Hiergeblieben Jungchen! Erst erzählst du mir [desc-passiert].'" instead;
	else if Tasche is on Schreibtisch:
		say "Der Sheriff knurrt ungehalten. 'Nimm['] gefälligst deinen Kram mit Junge.'" instead;
	
Before doing anything with Tasche when player is in r-sheriff:
	if the player is eingesperrt:
		say "'Dein Zeug bekommst du vielleicht später wieder. Erst erzählst du mir [desc-passiert].'" instead.

Instead of doing anything with Einberufungsbescheid when player is in r-sheriff:
	if Michael is in r-Sheriff:
		say "'Ich gebe dir deine Papiere gleich, wenn du mir alles erzählt hast.'";
	else if the player is eingesperrt:
		say "'Deine Papiere bekommst du vielleicht später wieder. Erst erzählst du [desc-passiert].'";
	else:
		say "'Deine Papiere bleiben hier, bis alles geklärt ist.', knurrt Dunder ungehalten.";

To say desc-passiert:
	say "[one of]was hier passiert ist[or]was genau hier los ist[at random]".

The Sheriff is a man in r-sheriff. The printed name is "Sheriff Dunder[m]". 
The description is "Sheriff Dunder ist ein hagerer Mann Ende Fünfzig mit stechenden grünen Augen und einem weißen [Schnauzbart]. Tiefe Falten ziehen sich durch sein tiefbraunes [Gesicht]. Ein stumpfer [Stern] aus Messing ziert die Weste seiner ansonsten unauffälligen Kleidung.".
The Sheriff is proper-named.
Understand "Sherrif", "Sheriff", "Scheriff", "Dunder", "Mann" as Sheriff.

A Schnauzbart is scenery in r-sheriff. The printed name is "Schnauzbart[m]".
The Schnauzbart is unwichtig.
Understand "Bart" as Schnauzbart.

A Gesicht is scenery in r-sheriff. The printed name is "Gesicht[n]".
The Gesicht is unwichtig.
Understand "Falten[p]" as Gesicht.

A Stern is scenery in r-sheriff. The printed name is "Stern[m]".
The description is "Ein einfacher Sheriffstern, wie er von Sheriffs im ganzen Land getragen wird.".
Understand "Sheriffstern" as Stern.

A Kleidung-Sheriff is scenery in r-sheriff. The printed name is "Kleidung[f]".
The description is "Zweckmäßige Kleidung, wie sie hier fast jeder trägt."
Understand "Weste[f]" as Kleidung-Sheriff.

After telling the Sheriff about:
	if Michael is in r-Sheriff:
		populate choice lists for pg-Ende-Menu;
		if assigned index is greater than 1:
			now assigned index is 0;
			clear choices;
			say "Was möchtest du sagen?";
			switch to cyoa at pg-Ende-Menu;
		else:
			now assigned index is 0;
			clear choices;
			say "Du hast gerade nichts zu sagen.";
	else:
		populate choice lists for pg-Sheriff-menu;
		if assigned index is greater than 1:
			now assigned index is 0;
			clear choices;
			say "Was möchtest du zu [dem Sheriff] sagen?";
			switch to cyoa at pg-Sheriff-menu;
		else:
			now assigned index is 0;
			clear choices;
			say "Du hast [dem Sheriff] gerade nichts zu sagen.";

pg-Sheriff-menu is a page.

pg-Sheriff-page1 is a page. 
"'Was passiert ist? Das wollte ich eigentlich von dir wissen, Junge.'

Sheriff Dunder geht einen Schritt zurück und lehnt sich an seinen Schreibtisch.

'Deputy Miller hat dich auf der Ranch gefunden, mit[']m Gesicht im Dreck und Blut am Kopf. Wollte dich da nicht in der Gluthitze verrecken lassen und hat dich her geschleift.'

Ja richtig, die Ranch, [der Lucy]... langsam fällt dir alles wieder ein."
The cdesc is "'Was ist passiert? Wie komme ich hierher?'".
It is for pg-Sheriff-menu. It is a dead-end. It is one-off.
A page-toggle rule for pg-Sheriff-page1: now pg-Sheriff-page2 is active.

pg-Sheriff-page2 is a page. 
"Dunder runzelt die Stirn. 'Miller sagt die Ranch war leer, kein Michael, keine Lucy. Was war da los, Junge?'

Du berichtest kurz von deinem Gespräch mit [dem Lucy]. Der Sheriff beäugt dich kritisch und seufzt schließlich.

'Lucy ist die Tochter von Bürgermeister [name-Bürgermeister]. Wenn ihr was passiert sein sollte, hast nicht nur du ein Problem.'"
The cdesc is "'Was ist mit [dem Lucy]?'".
It is for pg-Sheriff-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Sheriff-page2: 
	now pg-Sheriff-problem is active.

pg-Sheriff-problem is a page. 
"Der Sheriff kommt langsam auf dich zu und schiebt sein Gesicht vor deines, bis sich eure Nasenspitzen beinahe berühren. Sein Atem stinkt faulig und seine Augen blitzen dich unheilvoll an.

'Du bist jetzt einen Tag hier und schon ist die Tochter des Bürgermeisters verschwunden. Ich hab['] keine Ahnung, was genau du damit zu tun hast und ob deine Geschichte stimmt, aber ich rate dir dringend herauszufinden, wo sie ist.'"
The cdesc is "'Wieso ist das jetzt mein Problem?'".
It is for pg-Sheriff-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Sheriff-problem: 
	now pg-Sheriff-infos is active;
	now pg-Sheriff-gehen is active.

pg-Sheriff-infos is a page. 
"'Sie ist die Tochter von Bürgermeister [name-Bürgermeister], die Stieftochter, um genau zu sein. Hat sich mit dem Stallburschen verlobt, passt [name-Bürgermeister] gar nicht.'

Dunder zieht geräuschvoll einen hoch und spuckt unter die Pritsche.

'Ihre Mutter ist wohl vor einem Jahr oder so gestorben. Kannte sie aber nicht, bin selbst erst ein paar Monate hier.'"
The cdesc is "'Können Sie mir was zu Lucy sagen?'".
It is for pg-Sheriff-menu. It is a dead-end. It is one-off. It is inactive.

pg-Sheriff-gehen is a page.
"Der Sheriff wendet sich von dir ab und nickt widerwillig. 'Deine Papiere bleiben hier und du verlässt nicht die Stadt. Die Kutsche heute ist eh schon durch und einen Gaul wirst du dir nicht leisten können.'

Dunder kommt noch einmal näher und blickt dich durchdringend an.

'[if Tasche is on Schreibtisch]Dein Kram liegt auf dem Tisch. [end if]Wir behalten dich im Auge, Junge. Mach['] keinen Blödsinn.'"
The cdesc is "'Kann ich jetzt gehen?'".
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
"'Spannende Geschichte, Junge.' Er blickt dich geringschätzig an. 

'Komm['] wieder, wenn du sie gefunden hast, und geh['] mir bis dahin nicht weiter auf die Nerven.'"
The cdesc is "'Ich glaube, ich habe Lucys Taschentuch gefunden!'" It is for pg-Sheriff-menu. It is one-off. It is a dead-end. It is inactive.

pg-Sheriff-end is a page.
The cdesc is "Gespräch beenden". It is for pg-Sheriff-menu. It is an end-page.

[Ende]
Instead of telling Michael about when Michael is in r-Sheriff:
	try telling Sheriff about "dummy".
Instead of telling Lucy about when Lucy is in r-Sheriff:
	try telling Sheriff about "dummy".

pg-Ende-Menu is a page.

pg-Ende-Passiert is a page. 
"Dunder steht auf und legt Lucy eine Hand auf die Schulter.

'Nun, soweit ich die beiden hier richtig verstanden habe, hast du ihnen das Leben gerettet nachdem in der Höhle ein Karren mit Nitrofässern losgerollt und explodiert ist.'

Er blinzelt dich listig an. 'So ein Zufall, was?'"
The cdesc is "'Was ist passiert?'" It is for pg-Ende-Menu. It is a dead-end. It is one-off.
A page-toggle rule for pg-Ende-Passiert: 
	now pg-Ende-Kopf is active;
	now pg-Ende-Höhle is active;

pg-Ende-Kopf is a page.
"Michael fasst sich an den Kopf und rückt seinen Verband etwas zurecht.

'Ach, das geht schon wieder. Hat wohl ganz schön geblutet, als sie uns gefunden haben, aber Marten hat sich das angesehen und gleich verbunden.'"
The cdesc is "'Wie geht[']s Ihrem Kopf, Michael?'" It is for pg-Ende-Menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Ende-Kopf: 
	now pg-Ende-Michael is active;

pg-Ende-Michael is a page.
"'Hatte gehört, dass in der Mine wohl nicht alles mit rechten Dingen zugehen soll und auch Thompson seine Finger mit im Spiel hat. Als Cal und Bob dann am Abend bei Ella aufgetaucht sind und es da hoch her ging, dachte ich, das wäre ein guter Zeitpunkt da mal nachzusehen.'

Als Michael Lucys vorwurfsvollen Blick bemerkt, hebt er entschuldigend die Arme. 'Ich wollt[']s dir erst sagen, aber hätte ja auch einfach leeres Gerede sein können. Immerhin geht[']s um deinen Va-- ähm, Stiefvater.'

Lucy holt tief Luft und er spricht schnell weiter. 'Jedenfalls war die Mine leider nicht so verlassen wie ich dachte, ich wurde entdeckt und eingesperrt.'"
The cdesc is "'Was wollten Sie überhaupt da?'" It is for pg-Ende-Menu. It is a dead-end. It is one-off. It is inactive.

pg-Ende-Höhle is a page. 
"Lucy steht hastig auf. Ihre Unterlippe zittert.

'Diese Penner haben da irgendeinen Dreck zum Rauchen hergestellt! Und das nach all dem, was mit meiner Mutter war!'

Sie ringt um Fassung und dreht sich zu Michael um, der sie in den Arm nimmt."
The cdesc is "'Was haben die da in der Höhle getrieben?'" It is for pg-Ende-Menu. It is a dead-end. It is one-off.
A page-toggle rule for pg-Ende-Höhle: now pg-Ende-Mutter is active.

pg-Ende-Mutter is a page. 
"Michael wendet sich dir zu. 'Lucys Mutter hat wohl Opium geraucht und wurde irgendwann sehr krank. Sie ist leider letztes Jahr verstorben.'

Lucy weint. 'Ich habe nie genau verstanden, was mit ihr los war. Dieses Arschloch! Mein richtiger Vater hätte das niemals zugelassen!'"
The cdesc is "'Was war denn mit Ihrer Mutter?'" It is for pg-Ende-Menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Ende-Mutter: now pg-Ende-Thompson is active.

pg-Ende-Thompson is a page. 
"Dunder seufzt und hebt die Hände.

'Den haben wir leider noch nicht. Deputy Miller war als Erster am Mineneingang nach der Explosion. Ein paar der Banditen haben[']s wohl hustend und kriechend nach draußen geschafft. Um die hat sich Marten gekümmert.'

Er setzt sich neben Lucy. 'Die meisten anderen hatten nicht so viel Glück. Cal Mifflin ist tot, seinen Bruder Bob haben wir hinten in der Zelle. Miller musste über einige Leichen steigen, bevor er euch da hinten gefunden hat.'

Über Leichen steigen... Die furchtbaren Erinnerungen an die Ereignisse von Red Rock bohren sich kurz einen Weg in dein Bewusstsein, und ein kalter Schauer läuft dir über den Rücken.".
The cdesc is "'Wo ist Thompson?'" It is for pg-Ende-Menu. It is a dead-end. It is one-off.
A page-toggle rule for pg-Ende-Thompson: 
	now pg-Ende-Drogen is active.

pg-Ende-Drogen is a page. 
"'Wir gehen davon aus, dass sie Chandu produziert haben.' 

Der Sheriff blickt in dein fragendes Gesicht und lacht. 'Ja, ungefähr so hab['] ich auch erst geschaut, aber Marten hat[']s mir erklärt. Du kennst dieses Opiumzeug, das die Chinamänner rauchen? Der Gouverneur duldet es zwar noch, aber es wird hier nicht mehr gern gesehen. Macht die Leute nur krank.'

Er zieht einen Flachmann aus der Tasche, nimmt einen Schluck und hält ihn dir hin. Du nimmst dankbar an.

'Also, die schaffen wohl Opium in die Höhle, machen dann alles Mögliche damit und am Ende kommen dann so kleine Kugeln bei raus. Die lassen sich wohl einfacher verkaufen, und Marten meint, dass die mit Pflanzenfasern oder sowas gestreckt sind, daher auch die ganze Heimlichtuerei.'"
The cdesc is "'Was genau haben die denn hergestellt?'" It is for pg-Ende-Menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Ende-Drogen: now pg-Ende-Aufwand is active.

pg-Ende-Aufwand is a page. 
"Dunder nickt. 'Nun, das Zeug verdirbt wohl ziemlich schnell, wenn es nicht mehr rein ist, und draußen an der frischen Luft funktioniert die Produktion wohl nicht. Keine Ahnung. Denke das Zeug wurde dann möglichst schnell in der Stadt vertickt.'

Er blickt zur Tür. 'Wenn Bob aufwacht und wir Thompson haben, gibt[']s vielleicht mehr Antworten.'

Antworten... plötzlich fällt dir wieder ein, was dich eigentlich an diesen Ort geführt hat, und nimmst die Zeichnung aus deiner Weste, die du am Tag davor schon einigen Leuten in der Stadt gezeigt hast."
The cdesc is "'Was für ein Aufwand!'" It is for pg-Ende-Menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Ende-Aufwand: 
	now pg-Ende-Frau is active.

pg-Ende-Frau is a page. 
"Du zeigst Michael die Zeichnung. Er studiert sie eingehend und lächelt.

'Aber sicher! Diese Frau kam neulich drüben spätabends bei der Ranch an. Ihr Gaul ist fast unter ihr zusammengebrochen, und sie sah auch aus, als könne sie dringend eine Mütze Schlaf vertragen.'

Er gibt dir die Zeichnung zurück. 'Habe ihr angeboten bei Ella nach einem Zimmer zu fragen, aber sie wollte nicht. Ich habe sie dann im Heu schlafen lassen und ihr Pferd versorgt. Als ich am nächsten Morgen nach ihr sehen wollte, waren sie und ihr Pferd verschwunden.'"
The cdesc is "'Michael, kennen Sie diese Frau?'" It is for pg-Ende-Menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Ende-Frau: 
	now pg-Ende-Wohin is active.

pg-Ende-Wohin is a page. 
"'Sie hatte mir am Abend ein paar Dollar gegeben und gesagt, sie wolle in die Stadt, weil ihr Mann wohl dort im Militärgefängnis sitze.'

[italic type]Oh Claire, nein![roman type]".
The cdesc is "'Wo wollte sie hin?'" It is for pg-Ende-Menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Ende-Wohin: 
	now pg-Ende-Dorthin is active.

pg-Ende-Dorthin is a page. 
"'Militärgefängnis, was? Nun, aktuell bist du jedenfalls sauber, das habe ich schon prüfen lassen.' Dunder öffnet die Schublade seines Schreibtischs und reicht dir deinen Einberufungsbescheid.

'Die Männer des Gouverneurs werden bald hier sein, um Thompson zu finden und Mifflin zu befragen.'

Michael räuspert sich. 'Ähm, wir haben uns noch gar nicht richtig bedankt für alles, was Sie für uns getan haben. Also... vielen Dank.' 

Er gibt dir etwas unbeholfen die Hand. Lucy blickt dich an, die Augen gerötet, und umarmt dich kurz und fest."
The cdesc is "'Ich muss so schnell wie möglich dorthin!'" It is for pg-Ende-Menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Ende-Dorthin: 
	now pg-Ende-Taschentuch is active;
	now player has Einberufungsbescheid;

pg-Ende-Taschentuch is a page. 
The cdesc is "'Hier, Ihr Taschentuch. Hat mir sehr geholfen.'". It is for pg-Ende-Menu. It is a dead-end. It is one-off. It is inactive.

To finish the ending ride-out:
	now assigned index is 0;
	clear choices;
	switch from CYOA, without looking;
	now Taschentuch is in r-Backstage;
	now Schaufel is in r-Backstage;
	now Lampe is in r-Backstage;
	now Brecheisen is in r-Backstage;
	now Einberufungsbescheid is in Tasche;
	now Streichhölzer is in Tasche;
	now Tasche is closed;
	now player is in r-Steppe;
	now the player is not eingesperrt;

A page-toggle rule for pg-Ende-Taschentuch: 
	say "Lucys verweintes Gesicht hellt sich auf. 'Danke!'[paragraph break]Sie nimmt das Taschentuch aus deiner Hand und schnäuzt die Nase.[paragraph break]'Wir haben leider nicht viel Geld, und die Kohle meines Stiefvaters rühre ich nicht an. Wir würden Ihnen aber gerne Billy anbieten, das ist unser schnellstes Pferd.'[paragraph break]Sie blickt zu Michael, der eifrig nickt.[paragraph break]'Bringen Sie ihn einfach zu meinem Cousin Marc in der Tanner Street, wenn Sie in der Stadt angekommen sind.'[paragraph break]Du nimmst dankend an und stehst auf.[paragraph break]";
	finish the ending ride-out.

pg-Ende-end is a page.
The cdesc is "Gespräch beenden". It is for pg-Ende-Menu. It is an end-page.

A page-toggle rule for pg-Ende-End: 
	if player is not eingesperrt:
		finish the ending ride-out;

Test 4 with "test 7 / l / x pritsche / x tisch / x durchgang / x haus / se / raus / nimm tasche / nimm bescheid / lies bescheid / x Sheriff / rede mit dunder / 1 / 1 / 1 / 1 / 1 / 1".

[Name Lucy unbekannt, kurz]
Test 4b with "test 7b / rede mit dunder / 1 / 1 / 1 / 1 / 1 / 1".

[Lampe holen]
Test 4c with "Test 13 / s / o / n / o / s / x decke / x lampe / nimm lampe / ziehe stuhl / nimm lampe / rede mit frau / 5 / 5 / nimm lampe / x lampe / schalte lampe ein / zünde lampe an".

Section 5 - Gemischtwarenladen

r-Laden is a room.
The printed name is "Gemischtwarenladen[m]".
The description is "[if unvisited]Eine kleine [Glocke] bimmelt hell, als du das Geschäft betrittst. Der Bereich für die Kunden ist so klein, dass sich kaum zwei Personen gleichzeitig umdrehen können.[paragraph break]Im Durchgang hinter der Ladentheke erscheint der Ladenbesitzer Bill, krächzt ein leises 'Morgen' und wirft dir ein schiefes Lächeln zu.[paragraph break][end if]Du stehst vor der Ladentheke[if not unvisited], dahinter steht [Ladenmann] und [Ladenmann-action][end if]. Bis auf die offenen [Regale] hinter [Ladenmann] ist der Laden ziemlich leer.[paragraph break][if Brecheisen is on Theke]Auf der Theke liegt ein Brecheisen. [end if][if Streichhölzer is on Theke]Auf der Theke liegt ein kleines Papiertütchen mit Streichhölzern. [end if]Im Süden geht es hinaus auf die Straße.".
Understand "Gemischtwarenladen[m]", "Laden[m]" as r-Laden.

The Geruch of r-Laden is "Es riecht ein bisschen nach alter Mann und vielen Aromen die dich daran erinnern, heute noch nichts gegessen zu haben.".
r-Hauptstraße is outside of r-Laden.

A Ladentuer is a door in r-Laden. The printed name is "Ladentür[f]".
The description is "Die Eingangstür zum Laden.".
The Ladentuer is south of r-Laden and north of r-Hauptstraße.
Understand "Ladentuer", "Tuer", "Tuere" as Ladentuer.
Ladentuer is locked.

Instead of going to r-Laden when Ladentuer is locked:
	say "Bills Gemischtwarenladen hat noch nicht geöffnet.".

A Glocke is scenery in r-Laden. The printed name is "Glocke[f]".
The description is "Ein kleines Glöckchen an der Ladentür, vermutlich aus Messing.".
Understand "Gloeckchen[n]", "Tuer[f]", "Ladentuer[f]" as Glocke.

A Theke is a supporter in r-Laden. The printed name is "Ladentheke[f]".
The description is "Eine breite Theke aus Holz mit einer Klappe als Durchgang."
Understand "Ladentheke", "Klappe", "Tresen[m]" as Theke.

A Durchgang-Laden is scenery in r-Laden. The printed name is "Durchgang[m]".
The Durchgang-Laden is unwichtig.
Understand "Durchgang[m]" as Durchgang-Laden.

A Fenster-Laden is scenery in r-Laden. The printed name is "Fenster[n]".
The description is "Ein ziemlich staubiges Fenster zur Straße hinaus.".
Understand "Fenster[n]" as Fenster-Laden.

A Regale is scenery in r-Laden. The printed name is "Wandregale[p]".
The description is "[desc-regale]".
Understand "Regal[n]", "Wandregale[p]", "Waren[p]" as Regale.
To say desc-regale:
	say "Die großen Wandregale sind ziemlich leer. Ein paar Pappschachteln, Dosen, kleine Leinensäcke und große braune Flaschen enthalten offenbar Mehl, Zucker, Bohnen und einige andere Dinge, die du anhand der krakeligen [Schildchen] nicht genauer identifizieren kannst.[run paragraph on][line break]".

A Warencontainer is a thing in r-Laden. The printed name is "Warencontainer[p]". 
The description is "In [den noun] sind Waren die du nicht brauchst. Rede mit Bill wenn du etwas möchtest."
Understand "Pappschachtel[f]", "Pappschachteln[p]", "Schachtel[f]", "Schachteln[p]", "Sack[m]", "Saecke[p]", "Saeckchen[p]", "Leinensack[m]", "Leinensaecke[p]", "Flasche[f]", "Flaschen[p]", "Dosen[p]" as Warencontainer.

A Ware is a thing in r-Laden. The printed name is "Ware[f]". 
The description is "Du möchtest diese Ware nicht kaufen. Rede mit Bill wenn du etwas möchtest."
Understand "Mehl[n]", "Zucker[m]", "Bohnen[p]", "Dinge[p]", "Hering[m]",  "Heringe[p]", "Werkzeug[n]", "Werkzeuge[p]" as Ware.

A Schildchen is scenery in r-Laden. The printed name is "Schildchen[p]".
The description is "Du kannst die Schildchen nicht lesen, aber du glaubst auch nicht, dass du eines dieser Dinge brauchst."
Understand "Schild[n]", "Schilder" as Schildchen.

A Ladenmann is a person in r-Laden. The printed name is "Bill". Ladenmann is proper-named.
The description is "Der bucklige Ladenbesitzer heißt Bill, so steht es zumindest draußen auf dem Schild. Er ist ein alter Mann mit schlohweißem schütterem Haar und einem vernarbten aber freundlich wirkenden Gesicht. Er trägt einen fleckigen Kittel und stützt sich auf einen Gehstock.".
Understand "Mann[m]", "Ladenbesitzer[m]", "Bill" as Ladenmann.

Instead of taking Ware, try buying Ware instead.
Instead of taking Warencontainer, try buying Warencontainer instead.

Instead of buying something when player is in r-Laden:
	say "Sprich einfach mit Bill, wenn du etwas kaufen möchtest. Falls du etwas Bestimmtes brauchst, wirst du auch danach fragen können.".

A Ladenmann-Aussehen is scenery in r-Laden. The printed name is "Bills Aussehen[n]". The Ladenmann-Aussehen is proper-named. It is unwichtig.
Understand "Kittel", "Stock", "Gehstock", "Haar", "Gesicht" as Ladenmann-Aussehen.
Instead of doing anything except examining with Ladenmann-Aussehen:
	say "Lass Bill lieber in Ruhe.".

To say Ladenmann-action: say "[one of]stützt sich auf seinen Gehstock[or]kratzt sich am Kinn[or]reibt sich die Augen[or]hustet krächzend[at random]"

After telling the Ladenmann about:
	now Gebaeude is examined;
	populate choice lists for pg-Bill-menu;
	if assigned index is greater than 1:
		now assigned index is 0;
		clear choices;
		say "Was möchtest du zu [dem Ladenmann] sagen?";
		switch to cyoa at pg-Bill-menu;
	else:
		now assigned index is 0;
		clear choices;
		say "Du hast [dem Ladenmann] gerade nichts zu sagen.";

pg-Bill-menu is a page. 

pg-Bill-gehts is a page. 
"'Naja, muss halt, wa?' 

Bill grinst und präsentiert dabei einen gelben Schneidezahn im Oberkiefer seines ansonsten zahnlosen Mundes.

'Die Kutsche ist überfällig und ich hab['] fast nix mehr. Hoffe es gab keinen Überfall.'".
The cdesc is "'Wie geht[']s?'" It is for pg-Bill-menu. It is a dead-end. It is one-off.

pg-Bill-waren is a page. 
"'Alles, was du hinter mir siehst. Lesen musst du schon selber. Die roten Heringe da verkauf['] ich allerdings nicht mehr, die sind schon ein bisschen drüber.'".
The cdesc is "'Was gibt[']s hier?'" It is for pg-Bill-menu. It is a dead-end. It is one-off.
A page-toggle rule for pg-Bill-waren: 
	now pg-Bill-schilder is active.

pg-Bill-schilder is a page. 
"Bill lacht laut krächzend auf und erleidet dabei einen kleinen Hustenanfall. Er wischt sich den Mund am Kittel ab und lächelt, den Blick leicht an dir vorbei gerichtet.

'Tut mir leid Junge. Früher hat meine Frau die Waren beschriftet, aber sie ist leider nicht mehr. Ihre Schrift war wunderschön.'

Er greift sich gedankenverloren ins Gesicht, schüttelt kurz den Kopf und schaut dich an.

'Frag['] mich einfach, wenn du was Bestimmtes willst, ich weiß dann schon wo[']s ist. Werkzeug und so hab['] ich eh hinten im Lager.'".
The cdesc is "'Ich kann die meisten Schilder nicht lesen.'" It is for pg-Bill-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Bill-waren: 
	now pg-Bill-schilder is active.

pg-Bill-lucy is a page. 
"Bill kneift misstrauisch die Augen zusammen. 

'Lucy is[']n feines Mädchen, was willst du von ihr?'".
The cdesc is "'Wissen Sie, wo Lucy ist?'" It is for pg-Bill-menu. It is a dead-end. It is one-off.
A page-toggle rule for pg-Bill-lucy: 
	now pg-Bill-lucy2 is active.

pg-Bill-lucy2 is a page. 
"Du erzählst Bill, was passiert ist. Er wirkt betroffen.

'Oh Junge. Weiß leider nicht, wo sie sein könnte, vielleicht bei ihrem Burschen? Hier im Laden war sie jedenfalls schon ein paar Tage nicht mehr, und durch die dreckigen Scheiben seh['] ich nicht gut nach draußen. Tut mir leid.'".
The cdesc is "'Lucy ist verschwunden.'" It is for pg-Bill-menu. It is a dead-end. It is one-off. It is inactive.

pg-Bill-kuhfuß is a page.
"Bill blinzelt dich an. 'Einen Meißel? Nee sowas hab['] ich nicht.'

Er überlegt kurz und lächelt. 'Aber [']nen Kuhfuß müsste ich hinten noch irgendwo liegen haben.'"
The cdesc is "'Haben Sie einen Meißel oder sowas?'" It is for pg-Bill-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Bill-kuhfuß: 
	now pg-Bill-kuhfuß2 is active.

pg-Bill-kuhfuß2 is a page.
"Der Ladenbesitzer schaut dich verblüfft an und lacht dann krächzend. 'Wo kommst du denn her Junge? Ein Brecheisen halt! Ich hol[']s mal eben.'

Er verschwindet im Durchgang hinter der Theke. Ein paar Minuten und einige dubiose Geräusche und Kraftausdrücke später tritt er wieder an die Theke, das spärliche Haupthaar voller Spinnweben.

'Ich find[']s leider nicht. Ohne meinen Zwicker seh['] ich einfach nicht mehr gut genug.'"
The cdesc is "'Was zum Henker ist denn ein Kuhfuß?'" It is for pg-Bill-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Bill-kuhfuß2: 
	now pg-Bill-zwicker1 is active;
	now pg-Bill-zwicker2 is active.

pg-Bill-zwicker1 is a page.
"Bill weicht zurück und kneift die Augen zusammen.

'Und dann brätst du mir da hinten eins über was? Nee nee, du bleibst mal schön hier vorne Junge!'"
The cdesc is "'Kann ich vielleicht mal nachsehen?'" It is for pg-Bill-menu. It is a dead-end. It is one-off. It is inactive.

pg-Bill-zwicker2 is a page.
"Bill blickt gedankenverloren durch die fleckigen Fenster. 'Ich weiß es nicht.' 

Er klopft mit den Fingerknöcheln auf den Tresen. 'War heute früh wie jeden Morgen am Grab meiner Frau, da muss ich ihn noch gehabt haben. Bei dem Sandsturm seh['] ich sonst keine fünf Meter weit.[page-told]'".
The cdesc is "'Wo ist denn Ihr Zwicker?'" It is for pg-Bill-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Bill-zwicker2: 
	now pg-Bill-zwicker2 is inactive;
	if Bills-Frau is found:
		now pg-Bill-frau is active.

pg-Bill-frau is a page.
"'Sie [italic type]hieß[roman type] Mathilda.' 

Er zieht die Nase hoch und reibt sich im Auge. 'Hab['] sie meistens Hildchen genannt.'"
The cdesc is "'Ähm, wie heißt eigentlich Ihre Frau?'" It is for pg-Bill-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Bill-frau: 
	now Bills-Frau is proper-named.

pg-Bill-zwicker-found is a page.
"Du legst den Zwicker behutsam auf den Tresen. Bills Gesicht hellt sich auf und er blickt dich dankbar an.

'Ja, das ist er! Vielen Dank mein Junge! Ohne den wär['] ich auf Dauer ziemlich aufgeschmissen.'"
The cdesc is "'Ich glaube, ich habe Ihren Zwicker gefunden.'" It is for pg-Bill-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Bill-zwicker-found:
	now pg-Bill-zwicker-found2 is active.

pg-Bill-zwicker-found2 is a page.
"'Natürlich! Bin gleich wieder da.'

Ein endlos scheinendes [italic type]Gleich[roman type] später erscheint Bill wieder im Durchgang und knallt das Brecheisen vor dir auf den Tresen.

'Macht normalerweise acht Scheine, aber wenn du[']s nicht ewig brauchst leih['] ich[']s dir aus, scheinst ja [']ne ehrliche Haut zu sein.'"
The cdesc is "'Könnten Sie jetzt nochmal nach dem Brecheisen sehen?'" It is for pg-Bill-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Bill-zwicker-found2:
	now Ladenmann has the Zwicker;
	now the Brecheisen is on the Theke.

pg-Bill-Spalt is a page.
"Bill schaut dich verdutzt an. 'Seh['] ich wie ein Baustoffhändler aus? Sowas hab['] ich nicht.[page-told]'

Er schließt die Augen, als wolle er nachdenken, schüttelt dann aber verärgert den Kopf. 'Das Quietschen von diesem verdammten Windrad macht mich noch verrückt, ich sag[']s dir.'"
The cdesc is "'Ich könnte eine lange Stange oder sowas brauchen.'" It is for pg-Bill-menu. It is a dead-end. It is inactive.

pg-Bill-Schaufel is a page.
"'Nee hab['] ich leider keine mehr. Meine letzte hab['] ich Marten verkauft.'"
The cdesc is "'Haben Sie vielleicht eine Schaufel für mich?'" It is for pg-Bill-menu. It is a dead-end. It is one-off. It is inactive.

pg-Bill-anzünden is a page.
"Bills Gesicht hellt sich auf. 'Klar hab['] ich welche! Die guten alten ohne diesen Sicherheits-Reibescheiß, die kriegste immer an.'

Er legt ein kleines braunes Papiertütchen auf den Tisch. 'Macht einen Dollar.'

Du legst einen zerknitterten Dollarschein auf die Theke. Bill steckt ihn ein."
The cdesc is "'Haben Sie vielleicht Streichhölzer für mich?'" It is for pg-Bill-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Bill-anzünden:
	now the Streichhölzer are on the Theke;
	now Geldbetrag is Geldbetrag minus 1.

pg-Bill-Laterne is a page.
"Bill zuckt bedauernd mit den Schultern. 'Hab['] grade keine da Junge, tut mir leid.'"
The cdesc is "'Haben Sie Petroleumlampen?'" It is for pg-Bill-menu. It is a dead-end. It is one-off. It is inactive.

pg-Bill-Abgrund is a page.
"Der alte Mann kratzt sich nachdenklich am Kinn und schaut aus dem Fenster. 

'Ich hatte bestimmt zwanzig Meter Tau da. Kamen zwei junge Soldaten und sagten sie brauchen fünf Meter davon.'

Seine Augen blitzen auf, als sich ein breites Grinsen auf seinem Gesicht ausbreitet.

'Hab['] ihnen gesagt ich kann[']s nicht durchschneiden, da ham sie das komplette Ding gekauft.'"
The cdesc is "'Ich muss wo runterklettern, haben Sie da was für mich?'" It is for pg-Bill-menu. It is a dead-end. It is one-off. It is inactive.

A page-toggle rule for pg-Bill-Abgrund:
	now pg-Bill-Seil is active.

pg-Bill-Seil is a page. 
"'Die ham damals ganz schnell [']n Galgen zusammengezimmert, um ein paar Deserteure zu hängen, draußen vor der Stadt.'

Bill kneift die Augen zusammen und zieht die Luft ein. Die Erinnerung scheint ihm unangenehm zu sein. 

'Das ganze Dorf sollte zusehen. Kaum war[']s getan, sind die Soldaten wieder abgezogen, und Marten durfte sich um die Leichen kümmern.'

Er reibt sich kurz die Nase und blickt dich direkt an. 'Jetzt wo ich so dran denke, den Rest vom Tau hatten sie nicht dabei. Würde mich nicht wundern, wenn das da draußen noch irgendwo rumliegt.'"
The cdesc is "'Wofür haben die das Seil denn gebraucht?'" It is for pg-Bill-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Bill-Seil:
	now pg-Barbier-Seil is active.

pg-Bill-end is a page.
The cdesc is "Gespräch beenden". It is for pg-Bill-menu. It is an end-page.

Test 5 with "Test X / n / l / x Bill / x glocke / x regale / x theke".

[Zwicker]
Test 5b with "Test 12 / x brocken / o / n / o / n / rede mit bill / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 1 / 2 / s / o / n / x kreuz / 1 / 2 / 3 / 4 / 5 / s / w / n / rede mit bill / 1 / 1 / s / o / n / x grab / 1 / 2 / 5"

[Brecheisen]
Test 5c with "Test 5b / s / w / n / gib zwicker / rede mit bill / 1 / 1 / 1 / nimm kuhfuss"

[Streichhölzer]
Test 5d with "Test 4c / n / n / nimm streichhölzer / rede mit Bill / 4 / 4 / 6 / 6 / nimm streichhölzer / zünde lampe an".

[Seil]
Test 5e with "Test 13b / s / o / n / o / n / rede mit bill / 6 / 6 / 6 / s".

Section 6 - Barbier

r-Barbier is a room. r-Barbier can be locked or unlocked. r-Barbier is locked.
The printed name is "Barbier[m]".
The description is "[if unvisited]Du stupst kurz die rot-weiß-blaue Säule neben der Eingangstür an und betrittst das Geschäft. Du bist angenehm überrascht, wie hell und sauber es hier ist.[paragraph break][end if]Ein ausladender [Sessel] aus rotem Leder prangt vor einem großen, an der Wand befestigten [Spiegel]. Auf diversen Tischen und Regalen stehen kleine Fläschchen, Dosen und allerlei Krimskrams herum.[paragraph break][if Papagei is in r-Barbier][Ein Papagei] sitzt auf einer Stange und wackelt mit dem Kopf. [end if][Der Barbier] steht hinter dem Sessel und [Barbier-action].".
Understand "Laden[m]" as r-Barbier.
The Geruch of r-Barbier is "Es riecht ziemlich gut hier. Irgendwie frisch.".
It is northeast of r-Hauptstraße.
r-Hauptstraße is outside of r-Barbier.

Instead of going to r-Barbier when r-Barbier is locked:
	say "Der Laden des Barbiers scheint noch geschlossen zu sein.".

Instead of going south in r-Barbier:
	try going southwest instead.

A Krimskrams is scenery in r-Barbier. The printed name is "Krimskrams[m]". 
The description is "Dieser ganze Frisörkram interessiert dich nicht weiter."
Understand "Kram", "Tisch", "Tische[p]", "Regal[n]", "Regale[p]", "Flasche[f]", "Flaschen[p]", "Flaeschchen[p]", "Dose[f]", "Dosen[p]", "Doeschen[p]" as Krimskrams.
Instead of taking Krimskrams, try examining Krimskrams.

A Sessel is scenery in r-Barbier. The printed name is "Kippsessel[m]".
The description is "Ein großer Sessel aus rotem Leder, der sich in der Höhe verstellen lässt.".
Understand "Kippsessel", "Leder[n]" as Sessel.
Instead of doing anything except examining with the Sessel:
	say "[Der Barbier] mag es vermutlich nicht, wenn du an seinem Sessel herumspielst, und du hast leider keine Zeit dafür, seine Dienste in Anspruch zu nehmen."

A Spiegel is scenery in r-Barbier. The printed name is "Spiegel[m]".
The description is "Du könntest eine Rasur vertragen. Und einen Haarschnitt. Und ein Bad.".
Understand "Wandspiegel", "Wand[f]" as Spiegel.

A Stange-Barbier is scenery in r-Barbier. The printed name is "Stange[f]".
Stange-Barbier is unwichtig.
Understand "Stange[f]" as Stange-Barbier.

A Papagei is a animal in r-Barbier. The printed name is "Papagei[m]".
The description is "[desc-Papagei]".
Understand "Vogel[m]", "Molly[f]", "Blackbeard[m]" as Papagei.

To say desc-Papagei:
	if player does not have Papagei and Papagei is in r-Barbier:
		say "[if Papagei is proper-named]Molly[else]Ein schöner Papagei[end if] trippelt friedlich auf [if Papagei is proper-named]ihrer[else]seiner[end if] Stange auf und ab.[run paragraph on]";
		if Papagei is zutraulich:
			say " [Der Papagei] blickt sich erwartungsvoll an.[run paragraph on][line break]";
		else:
			say "[run paragraph on][line break]";
	else:
		say "'Braaak!'[run paragraph on][line break]";

Instead of telling the Papagei about:
	if Papagei is in r-Huegelkette or Papagei is in r-Mine:
		say "'FEURIO! FEURIO! Braaak!'";
	else:
		say "'[one of]Ist Maximilien Heller zu Hause? [or]Errare humanum est. [or]Johoo, und [']ne Buddel Rum! [or]Drei Rosen und die Dreizehn. [or]Schau unter die Steine jenseits der Gebeine. [or]Ich hab['] noch jeden reingelegt! [at random][run paragraph on]Bra[one of]a[or]aa[or]aaa[at random]k!'[paragraph break] ".

Instead of pushing the Papagei, try taking the Papagei.
Instead of pulling the Papagei, try taking the Papagei.

Instead of taking the Papagei:
	if player has Papagei:
		say "Du hast [den Papagei] doch schon.";
	else if Brocken is entdeckt:
		say "Molly hält den Kopf schief und weicht etwas zurück. Offenbar hatte sie schon genug Aufregung heute.";
	else if Papagei is zutraulich and Papagei is nehmbar:
		say "Du hältst [dem Papagei] deinen ausgestreckten Arm entgegen. [if Papagei is proper-named]Sie[else]Er[end if] schaut kurz zu Marten der wohlwollend nickt, dann hoppelt [if Papagei is proper-named]sie[else]er[end if] auf deinem Arm entlang und macht es sich auf deiner linken Schulter bequem. 
		
		'BRAAAK!'";
		now player has Papagei;
	else if Papagei is zutraulich:
		say "Du hältst [dem Papagei] deinen ausgestreckten Arm entgegen. [if Papagei is proper-named]Sie[else]Er[end if] trippelt dir entgegen, schaut kurz zu Marten und hüpft dann wieder auf [if Papagei is proper-named]ihre[else]seine[end if] Stange.";
	else if Papagei is nehmbar:
		say "Du hältst [dem Papagei] deinen ausgestreckten Arm entgegen. [if Papagei is proper-named]Sie[else]Er[end if] legt den Kopf schief und blickt dich erwartungsvoll an, rührt sich aber nicht vom Fleck.";
	else:
		say "[Der Barbier] wirft dir einen misstrauischen Blick zu. Du lässt es erstmal bleiben.";

Check showing Keks to Papagei:
	say "[Der Papagei] flattert aufgeregt. 'Kekse! Kekse! Braaak!'";

Before giving Keks to Papagei:
	say "[Der Papagei] schnappt gierig nach dem Keks und mümmelt ihn ruck-zuck herunter.";
	now the Papagei is zutraulich;
	remove the Keks from play;
	stop the action.

Rule for printing inventory details for the Papagei:
	say " (auf deiner linken Schulter)";

A Barbier is a man in r-Barbier. The printed name is "Barbier[m]".
The description is "[Der Barbier] ist ein stämmiger Mann mit dicken Oberarmen und einem gepflegten schwarzen Vollbart. Er trägt eine gestreifte Stoffweste und eine kurze Leinenhose.".
Understand "Mann", "Marten", "Barbier", "Frisoer", "Friseur", "Nase" as Barbier.
A Barbier can be InformedAboutLucy. Barbier is not InformedAboutLucy.

The Barbier-Aussehen is scenery in r-Barbier. The printed name is "Martens Aussehen[n]". The Barbier-Aussehen is proper-named. It is unwichtig.
Understand "Arm", "Arme", "Oberarm", "Oberarme", "Bart", "Vollbart", "Weste", "Stoffweste", "Hose", "Leinenhose", "Messer", "Rasiermesser", "Schere", "Pfeife", "Aussehen", "Martens Aussehen" as Barbier-Aussehen.
Instead of doing anything except examining with Barbier-Aussehen:
	say "Lass['] [den Barbier] und seine Sachen besser in Ruhe. Er sieht ziemlich kräftig aus.".

To say Barbier-action: say "[one of]popelt in der Nase[or]poliert den Spiegel[or]sortiert einige Döschen[or]schärft seine Schere[or]prüft sein Rasiermesser[at random]".

After telling the Barbier about:
	if Barbier is not proper-named:
		say "Der Barbier geht einen kleinen Schritt auf dich zu und grinst dich freundlich an. 
		
		'Moin Mister. Mein Name ist Marten, was kann ich für Sie tun? Bart stutzen, Haare schneiden, Schusswunde versorgen?'[paragraph break]";
		re-genderise the Barbier to "Marten[m]", as proper-named;
	populate choice lists for pg-Barbier-menu;
	if assigned index is greater than 1:
		now assigned index is 0;
		clear choices;
		say "Was möchtest du zu [dem Barbier] sagen?";
		switch to cyoa at pg-Barbier-menu;
	else:
		now assigned index is 0;
		clear choices;
		say "Du hast [dem Barbier] gerade nichts zu sagen.";

pg-Barbier-menu is a page. 

pg-Barbier-moin is a page. 
"[Der Barbier] lacht herzlich und hält sich den Bauch.

'Entschuldigen Sie Mister, ich kann mir das nicht ganz abgewöhnen. Ich bin nämlich Friese.'"
The cdesc is "'Moin? Es ist schon Mittag.'" It is for pg-Barbier-menu. It is a dead-end. It is one-off.
A page-toggle rule for pg-Barbier-moin: 
	now pg-Barbier-friese is active.

pg-Barbier-friese is a page. 
"'Bin vor über zehn Jahren mit[']m Kahn hergekommen, war erster Maat. Wollte eigentlich mit Molly auf Goldsuche gehen, aber dann kam der Krieg dazwischen.'"
The cdesc is "'Was hat Sie denn hierher verschlagen?'" It is for pg-Barbier-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Barbier-friese: 
	now pg-Barbier-molly is active.

pg-Barbier-schusswunde is a page. 
"Marten lacht dröhnend. 

'Als Barbier auf hoher See ist es immer ganz nützlich, wenn man sich auch ein bisschen mit der Versorgung von Wunden auskennt. Außerdem gibt es hier keinen Arzt mehr.'

Er zieht eine kleine Pfeife aus der Tasche und drückt mit einer geübten Bewegung etwas Tabak hinein.

'Und bevor du fragst, ich bin außerdem der Totengräber hier. Ist seit dem Krieg zum Glück nicht mehr so oft gefragt.'"
The cdesc is "'Schusswunde? Ich dachte Sie sind Barbier.'" It is for pg-Barbier-menu. It is a dead-end. It is one-off.

pg-Barbier-molly is a page. 
"'Meine Frau? Haa-ha-ha!'

[Der Barbier] kann kaum an sich halten und klopft sich auf die Schenkel.

'Molly is['] mein Vogel meen Jong! Ham['] schon viel gemeinsam erlebt auf See. War als Feuermelder mit dabei, beim kleinsten bisschen Rauch schlägt sie Alarm.'"
The cdesc is "'Ist Molly Ihre Frau?'" It is for pg-Barbier-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Barbier-molly: 
	re-genderise the Papagei to "Molly[f]", as proper-named;
	now pg-Barbier-molly2	is active.

pg-Barbier-molly2 is a page. The Toldcounter is 1.
"'War als Feuermelder mit dabei, beim kleinsten bisschen Rauch schlägt sie Alarm.[page-told]'".
The cdesc is "'Wieso war Molly noch gleich mit auf See?'" It is for pg-Barbier-menu. It is a dead-end. It is inactive.

pg-Barbier-mine is a page.
"'Die Mine? Was willst[']n da?' 

Du erzählst Marten, was los ist. Zum ersten Mal macht er ein ernstes Gesicht.

'Aah. Üble Geschichte. Glaub['] nicht, dass du vorne reinkommst, mit den Jungs da ist nicht gut Kirschen essen. Vielleicht gibt[']s noch einen anderen Eingang.'"
The cdesc is "'Eine Idee wie ich in die Mine komme?'" It is for pg-Barbier-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Barbier-mine:
	now pg-Barbier-leihen is active;
	now Barbier is InformedAboutLucy.

pg-Barbier-leihen is a page.
"'Wat, mein['] Vogel willste mitnehmen? Wegen Lucy ne?'

Marten kratzt sich nachdenklich an dem tätowierten Anker auf seinem rechten Oberarm.

'Also wennse freiwillig mit dir mitgeht, soll[']s mir recht sein. Die haut dann schon ab, wenn[']s brenzlig wird. Aber trotzdem, pass ja gut auf sie auf!'"
The cdesc is "'Kann ich mir [den Papagei] mal ausleihen?'" It is for pg-Barbier-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Barbier-leihen:
	now Papagei is nehmbar.

pg-Barbier-Schaufel is a page.
"Marten lacht dröhnend und blinzelt dich an. 

'Jo meinste ich heb['] die Gräber hier mit den Händen aus oder wat? Klar hab['] ich eine Schaufel! Erst vor ein paar Tagen [']ne neue bei Bill geholt, dem ollen Geizkragen!'" 
The cdesc is "'Sie haben doch bestimmt eine Schaufel, oder?'".
It is for pg-Barbier-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Barbier-Schaufel:
	now pg-Barbier-Schaufel2 is active.

To say desc-Barbier-Schaufel2:
	if Barbier is InformedAboutLucy:
		say "'Ist das für die Lucy-Sache?' fragt Marten. Du bejahst. Er legt den Kopf schief und krault sich den Bart. 'Gut, hol['] ich dir.'

		Er verschwindet kurz im hinteren Teil des Ladens und taucht kurz darauf mit einer großen Metallschaufel in der Hand wieder auf.

		'Is[']n bissken schettrig aber kannste ja sauber machen wenn[']s dich stört. Wiedersehen macht Freude!'

		Du nimmst die Schaufel und bedankst dich.[run paragraph on]";
	else:
		say "Marten lacht und knufft dich in die linke Schulter. 'Meine Schaufel? Na da kann ja jeder kommen. Nee einfach so kriegste die nicht.[page-told]'";

pg-Barbier-Schaufel2 is a page. "[desc-Barbier-Schaufel2]".
The cdesc is "'Können Sie mir die Schaufel leihen?[if Barbier is InformedAboutLucy] Es ist wirklich wichtig.[end if]'".
It is for pg-Barbier-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Barbier-Schaufel2:
	if Barbier is InformedAboutLucy:
		now player has the Schaufel;
		now pg-Barbier-Schaufel2 is inactive;
		now pg-Bill-Schaufel is inactive.

pg-Barbier-Seil is a page.
"Marten zuckt zusammen und blickt dich argwöhnisch an.

'Nee war ich nich. Ich war leider dabei, als er [italic type]eingeweiht[roman type] wurde, und durfte danach zwei Tage ranklotzen, bis alle verscharrt waren. Wieso fragst du?'" 
The cdesc is "'Waren Sie damals dabei als der Galgen gebaut wurde?'".
It is for pg-Barbier-menu. It is a dead-end. It is one-off. It is inactive.
A page-toggle rule for pg-Barbier-Seil:
	now pg-Barbier-Seil2 is active.

pg-Barbier-Seil2 is a page.
"'Ja klar meen Jong. Ich durfte ja alles wegräumen.'

Er schüttelt den Kopf und räuspert sich.

'Die Soldaten haben mir ein bisschen Geld gegeben und gesagt, allen übrigen Kram rein in die Luke und feste zunageln, die Schlinge durchschneiden und die Leichen begraben. War ein lächerlicher Lohn für die ganze Arbeit, aber Nein zu sagen wär['] sicher keine gute Idee gewesen.'"
The cdesc is "'Bill meinte da müsste [']ne Menge Seil übriggeblieben sein, wissen Sie wo das abgeblieben ist?'".
It is for pg-Barbier-menu. It is a dead-end. It is one-off. It is inactive.

pg-Barbier-end is a page. 
The cdesc is "Gespräch beenden". It is for pg-Barbier-menu. It is an end-page.

Test 6 with "Test X / w / w /nimm tuch / o / o / no / l / x barbier / rede mit barbier / 1 / 1 / 1 / 1 / 1 / 2 / 3 / rede mit molly / rede mit molly / rede mit molly / nimm molly / purloin keks / i / zeig molly den keks / gib molly den keks / nimm molly / rede mit marten / 1 / 1 / 3 / ziehe molly / i".

[Seil]
Test 6b with "Test 5e / no / rede mit marten / 1 / 1 / 1".

Test 6c with "Test x / no / x papagei / purloin keks / gib molly keks / x molly".

Section 7 - Ranch

r-Ranch is a room. The printed name is "Ranch[f]".
The description is "[if unvisited]Du kommst zu einem kleinen [Holzhaus] mit angrenzendem [Stall] und einer großen umzäunten [Koppel].[paragraph break][else]Ein kleines [Holzhaus] mit angrenzendem [Stall] und einer umzäunten [Koppel]. Vor dem Haus steht eine kleine [Bank].[end if][if Lucy is in r-Ranch][Ein Lucy] sitzt schluchzend auf einer kleinen [Bank].[else][paragraph break]Ein schmaler Weg führt nach Süden zum Windrad. Die Hauptstraße führt von Osten kommend weiter nach Westen aus der Stadt hinaus.[end if][random-event]".
Understand "Ranch[f]" as r-Ranch.
The Geruch of r-Ranch is "Es riecht hauptsächlich nach Stroh und Pferdescheiße.".

r-Ranch is west of r-Hauptstraße.
Instead of going northwest in r-Ranch, say "[desc-OOB]".
Instead of going north in r-Ranch, say "[desc-OOB]".
Instead of going northeast in r-Ranch, say "[desc-OOB]".
Instead of going southwest in r-Ranch, say "[desc-OOB]".
Instead of going southeast in r-Ranch, say "[desc-OOB]".

Before going east when player is in r-Ranch:
	if player has Stange:
		say "[ort-stange]" instead.

A Holzhaus is scenery in r-Ranch. The printed name is "Holzhaus[n]".
The description of Holzhaus is "Ein kleines Holzhäuschen mit einem flachen, leicht schrägen Dach, kaum mehr als ein Schuppen.".
Understand "Haus", "Haeuschen", "Dach", "Schuppen[m]", "Tuer[f]" as Holzhaus.
Instead of entering or opening Holzhaus, say "Du hast da nichts verloren. [if Lucy is not in r-Ranch]Lucy und Michael sind ganz sicher nicht hier.[paragraph break][else][line break][end if]"

A Koppel is scenery in r-Ranch. The printed name is "Koppel[f]".
The description is "Eine kleine Pferdekoppel, durch einen hüfthohen [Zaun] eingefasst. Es gibt hier nichts außer vertrocknetem Steppengras.".
Understand "Pferdekoppel[f]" as Koppel.
Instead of entering Koppel, try examining Koppel.

A Steppengras is scenery in r-Ranch. The printed name is "Steppengras[n]".
The description is "Trockenes Steppengras, der letzte Regen ist schon lange her. Du brauchst es nicht.".
Understand "Gras[n]","Steppengras[n]" as Steppengras.
Instead of doing anything except examining with Steppengras, try examining Steppengras.

A Zaun is scenery in r-Ranch. The printed name is "Zaun[m]".
The Zaun is unwichtig.
Understand "Zaun" as Zaun.

A Stall is scenery in r-Ranch. The printed name is "Stall[m]".
The description is "Einige Pferde bewegen sich unruhig im Stall umher. Der [Gestank] ist atemberaubend.".
The Geruch of Stall is "Es riecht nach Pferdescheiße."
Understand "Pferdestall" as Stall.
Instead of entering Stall, say "Der Gestank ist wirklich unangenehm, und du erwartest auch nicht dort etwas Wichtiges zu finden."

A Gestank is scenery in r-Ranch. The printed name is "Gestank[m]".
Understand "Geruch" as Gestank.
The description is "Hauptsächlich Pferdescheiße."

A Bank is a scenery in r-Ranch. The printed name is "Bank[f]".
The description is "Eine einfache Sitzbank, aus Holz gezimmert."
Understand "Sitzbank" as Bank.
Instead of entering bank, say "Du hast jetzt wirklich keine Zeit dich auszuruhen.".

The Pferde is scenery in r-Ranch. The printed name is "Pferde[-n][p]".
The description is "Die Pferde scheinen unruhig zu sein.".
Understand "Pferde[p]", "Pferd[n]", "Gaul[m]" as Pferde.
The Pferde are unwichtig.

A Stoffball is verschwunden and scenery in r-Ranch. The printed name is "Stoffball[m]".
A Junge is verschwunden and scenery in r-Ranch. The printed name is "Junge[m]".
A Klapperschlange is verschwunden and scenery in r-Ranch. The printed name is "Klapperschlange[f]".
Understand "Schlange[f]" as Klapperschlange.
A Hund is verschwunden and scenery in r-Ranch. The printed name is "Hund[m]".
A Dörrfleisch is verschwunden and scenery in r-Ranch. The printed name is "Doerrfleisch[n]".

A Lucy is a woman in r-Ranch. The printed name is "jung[^] Frau[f]".
The description of Lucy is "[Lucy-desc]".
Lucy is not entdeckt. Lucy can be lauschend. Lucy is not lauschend.

To say Lucy-desc:
	if Lucy is in r-Ranch:
		say "[Der Lucy] hat ihr Gesicht in den Händen vergraben und bemerkt dich nicht. Sie trägt zweckmäßige, robuste Kleidung und wirkt sehr gepflegt.[run paragraph on][line break]";
	else:
		say "[Der Lucy] trägt zweckmäßige, robuste Kleidung und wirkt sehr gepflegt.[run paragraph on][line break]";

Understand "Frau", "Maedchen[n]" as Lucy.

Lucy can be crying or not crying. The Lucy is crying.

Before going somewhere when player is in r-Ranch and Lucy is in r-Ranch:
	if Lucy is crying:
		say "Du kannst [der Lucy] nicht einfach so hier sitzen lassen." instead.

After telling Lucy about when player is in r-Ranch:
	say "Was möchtest du zu [dem Lucy] sagen?";	
	switch to cyoa at pg-Lucy-menu.

pg-Lucy-menu is a page. 

pg-Lucy-ansprechen is a page. 
"[Der Lucy] blickt zu dir hoch, die Augen tränenüberströmt. 'Michael ist weg!'".
The cdesc is "'Kann ich Ihnen vielleicht helfen Ma[']am?'"
It is for pg-Lucy-menu. It is one-off. It is a dead-end.
A page-toggle rule for pg-Lucy-ansprechen: 
	now pg-Lucy-Michael is active;
	now pg-Lucy-Lucy is active.

pg-Lucy-Michael is a page.
"[Der Lucy] schnäuzt einmal in ihr Taschentuch.
'Michael ist mein Verlobter. Er wollte gestern noch in den Saloon.' 

Sie holt tief Luft und deutet hinüber zu den Pferden.

'Als ich heute Morgen hergekommen bin, waren die Pferde nicht versorgt und von Michael keine Spur. Er würde die Pferde niemals sich selbst überlassen!'".
The cdesc is "'Wer ist Michael?'".
It is for pg-Lucy-menu. It is one-off. It is a dead-end. It is inactive.
A page-toggle rule for pg-Lucy-Michael: 
	now pg-Lucy-passiert is active.

pg-Lucy-Lucy is a page.
"'Ich bin Lucy.'".
The cdesc is "'Wie heißen Sie?'".
It is for pg-Lucy-menu. It is one-off. It is a dead-end. It is inactive.
A page-toggle rule for pg-Lucy-Lucy: 
	re-genderise the Lucy to "Lucy[f]", as proper-named.

pg-Lucy-passiert is a page.
"Sie wendet den Blick ab. 

'Ich weiß es nicht. Bevor er gestern gegangen ist, hat er kurz gesagt, dass er etwas über die [name-Brüder] gehört hat. Als ich wissen wollte, was genau hat er mich nachdenklich angesehen und gemeint, es sei doch nicht so wichtig.'

[Der Lucy] wendet sich dir wieder zu. Ihr Blick streift dein Gesicht, ihre Augen weiten sich angsterfüllt.

'He, was--'

[bold type]BAUZ![roman type][run paragraph on]".
The cdesc is "'Haben Sie eine Idee, was passiert sein könnte?'".
It is for pg-Lucy-menu. It is one-off. It is a dead-end. It is inactive. It is an end-page.

A page-toggle rule for pg-Lucy-passiert:
	cyoa teleport to r-Flashback-1.

Before selecting pg-Lucy-passiert:
	say "[italic type][bracket][cdesc of pg-Lucy-passiert][close bracket][roman type][paragraph break]".
	
pg-Lucy-end is a page. 
The cdesc is "Gespräch beenden". 
It is for pg-Lucy-menu. It is an end-page.

Test 7 with "runter / raus / w / x Frau / rede mit Frau / 1 / 1 / 1 / 1".

[nicht nach Name fragen]
Test 7b with "runter / raus / w / rede mit Frau / 1 / 1 / 2".

Test 7c with "test f1 / test f2 / o / x pferde / x pferde / x pferde / x pferde / x pferde"

Section 8 - Galgen

r-Galgen is a room. The printed name is "Galgen[m]".
The description is "[if unvisited]Als du das letzte Gebäude passierst, trifft dich der Wind hart von der Seite. Du ziehst dir dein Halstuch über die Nase und gehst langsam weiter. Nach ein paar Metern kannst du in der Staubwolke vor dir allmählich eine Art Gerüst erkennen.[paragraph break][end if]Du stehst vor einem [Galgen], bestehend aus zwei Pfosten mit Querbalken und einer [Schlinge]. Ein [Podest] dient als Fundament.[paragraph break]Weiter nördlich glaubst du einige schiefe [Kreuze-Galgen] zu erkennen. Nach Westen geht es zurück in die [Stadt].[random-event]".

The Geruch of r-Galgen is "Der Wind hier ist zu schneidend, um irgendetwas zu riechen.".
r-Galgen is east of r-Hauptstraße.
Instead of going northwest in r-Galgen, say "[desc-OOB]".
Instead of going northeast in r-Galgen, say "[desc-OOB]".
Instead of going east in r-Galgen, say "[desc-OOB]".
Instead of going southwest in r-Galgen, say "[desc-OOB]".
Instead of going south in r-Galgen, say "[desc-OOB]".
Instead of going southeast in r-Galgen, say "[desc-OOB]".

A Galgen is scenery in r-Galgen. The printed name is "Galgen[m]".
The description is "Der Galgen besteht aus zwei dicken Pfosten mit Querbalken und einem Seil. Die Schlinge ist durchtrennt."
Understand "Geruest[n]", "Pfosten[p]", "Balken[m]", "Querbalken[m]" as Galgen.

A Schlinge is scenery in r-Galgen. The printed name is "Schlinge[f]".
The description is "Ein dickes Seil, zu einer Schlinge gebunden und am unteren Ende durchtrennt. Wahrscheinlich wurde der Galgen so nach dem Krieg außer Betrieb gesetzt.".
Understand "Schlinge[f]", "Tau[n]", "Seil[n]", "Ende[n]", "Strick[m]" as Schlinge.
Instead of taking Schlinge:
	say "Selbst wenn du die Schlinge entknoten könntest, wäre dir das Seil in dieser Form nicht von Nutzen.".

A Podest is a thing in r-Galgen. The printed name is "Holzpodest[n]".
The description is "[desc-Podest][run paragraph on]". Podest is fixed in place.
Understand "Podest", "Holzpodest", "Fundament", "Balken[p]", "Platte[f]", "Holzplatte[f]", "Oeffnung[f]", "Luke[f]" as Podest while Podest is geöffnet.
Understand "Podest", "Holzpodest", "Fundament", "Balken[p]", "Platte[f]", "Holzplatte[f]", "Naegel[p]", "Nagel[m]" as Podest while Podest is entdeckt and Podest is not geöffnet.
Understand "Podest", "Holzpodest", "Fundament", "Balken[p]" as Podest while Podest is not entdeckt.

Instead of looking under Podest:
	say "Das Podest ist vollständig mit dicken Balken verschlossen.".

Instead of pushing or pulling or opening or rubbing or taking Podest:
	if Podest is not entdeckt:
		try taking sand instead;
	if Podest is not geöffnet:
		say "Ohne geeignetes Werkzeug ist das ein sinnloses Unterfangen.";
	else:
		say "Das Podest ist bereits geöffnet."

Instead of entering Podest, try examining Podest.
Instead of unlocking Podest with something:
	if Podest is geöffnet:
		say "Das Podest ist doch schon offen!";
	else if the second noun is Brecheisen:
		try using Brecheisen on Podest;
	else:
		say "[Der second noun] [ist] dazu leider nicht geeignet.";

Podest is not entdeckt. Podest can be geöffnet. Podest is not geöffnet.
To say desc-Podest:
	if Podest is not entdeckt:
		say "Ein offenbar eilig zusammengezimmertes Holzpodest bildet das Fundament des Galgens. Es ist beinahe vollständig mit [Sand] bedeckt.";
	else if Podest is not geöffnet:
		say "Auf dem Podest wurde direkt unter dem Galgen eine große Holzplatte festgenagelt.";
	else if player has Lampe and Lampe is lit:
		say "Du leuchtest mit deiner Lampe in die Öffnung hinein. Einige Mäuse nehmen quiekend Reißaus.";
		if Seil is in r-Galgen:
			say "[line break]Im fahlen Schein der Lampe kannst du einige krummgeschlagene Nägel, ein paar in Spinnweben eingehüllte Bretter und ein aufgerolltes Tau erkennen.";
		else:
			say "[line break]Im fahlen Schein der Lampe kannst du einige krummgeschlagene Nägel und ein paar in Spinnweben eingehüllte Bretter erkennen.";
	else:
		say "Es ist zu dunkel, um zu erkennen was da drin ist, und du hast keine Lust da einfach so deine Hand reinzustecken.";
		if Lampe is not allowed-to-take:
			now pg-Bill-Laterne is active;
			now pg-Barfrau-Laterne is active;

A Kreuze-Galgen is scenery in r-Galgen. The printed name is "Kreuze[p]".
The description is "Mehrere Kreuze, einige davon krumm. Aus der Entfernung kannst du keine weiteren Details ausmachen.".
Understand "Kreuze[p]", "Kreuz[n]", "Holzkreuze[p]" as Kreuze-Galgen.

A Stadt is scenery in r-Galgen. The printed name is "Stadt[p]".
The description is "Stadt ist vielleicht etwas hoch gegriffen für die Handvoll Häuser im Westen.".
Understand "Dorf[n]", "Haeuser[p]", "Haus[n]" as Stadt.

A Frau is verschwunden and scenery in r-Galgen. The printed name is "Frau[f]".
A Gehstock is verschwunden and scenery in r-Galgen. The printed name is "Gehstock[m]".

To say desc-Sand:
	say "Der Sand bildet eine kleine Düne und geht dir an der höchsten Stelle bis zum Knie. Vom Boden des Podests ist praktisch nichts mehr zu sehen.[run paragraph on][line break]";
	if player does not have Schaufel:
		now pg-Bill-Schaufel is active;
		now pg-Barbier-Schaufel is active.

A Sand is scenery in r-Galgen. The printed name is "Sand[m]".
The description is "[desc-Sand]".
Understand "Duene[f]" as Sand.

Instead of pushing Sand, try taking Sand.
Instead of pulling Sand, try taking Sand.
Instead of rubbing Sand, try taking Sand.
Instead of taking Sand:
	if Podest is not entdeckt:
		say "Du versuchst den Sand mit den Füßen beiseite zu scharren, aber bei diesem Wind scheint das ein sinnloses Unterfangen zu sein. Vielleicht hättest du mit ordentlichem Werkzeug mehr Erfolg.";
		now pg-Bill-Schaufel is active;
		now pg-Barbier-Schaufel is active;
	else:
		say "Du hast dich genug mit dem Sand beschäftigt.";

Test 8 with "runter / raus / o / x galgen / x seil / x podest / x sand / x kreuze / x stadt / schiebe sand / ziehe sand / nimm sand".

[Schaufel]
Test 8b with "Test X / o / nimm sand / w / w / w / nimm taschentuch / o / o / no / rede mit marten / 4 / 3 / 4 / 4 / raus / x Schaufel".

[Seil]
Test 8c with "Test 8b / o / x podest / benutze schaufel mit sand / x platte / purloin brecheisen / benutze brecheisen mit platte / x öffnung / purloin lampe / purloin streichhölzer / mach lampe an / x öffnung / x nägel / x bretter / nimm nägel / nimm bretter / nimm seil".

[Öffne Podest]
Test 8d with "Test 8b / o / x podest / benutze schaufel mit sand / x platte / öffne podest / purloin brecheisen / öffne podest mit kleidung / öffne podest mit schaufel / öffne podest mit brecheisen".


Section 9 - Friedhof

r-Friedhof is a room. The printed name is "Friedhof[m]".
The description is "[if unvisited]Du gehst einige Schritte weiter auf die Kreuze zu. Halbhohes Buschwerk schützt die Grabstätten und deren Besucher vor dem Wind.[paragraph break][end if]Mehrere schiefe Kreuze stehen achtlos nebeneinander auf einen kleinen Hügel gepfercht, keines davon beschriftet. Möglicherweise die letzte Ruhestätte von Deserteuren.[paragraph break]Weiter vorne stehen vier Kreuze sauber aufgereiht nebeneinander, jeweils am Kopfende eines ordentlich mit Steinen eingefassten Grabes.[paragraph break]Im Süden siehst du die Umrisse des Galgens.[random-event]".
Understand "Friedhof[m]" as r-Friedhof.

The Geruch of r-Friedhof is "Die von der Sonne heißen Büsche verströmen einen leicht süßlichen Duft.".
r-Friedhof is north of r-Galgen.
Instead of going northwest in r-Friedhof, say "[desc-OOB]".
Instead of going north in r-Friedhof, say "[desc-OOB]".
Instead of going northeast in r-Friedhof, say "[desc-OOB]".
Instead of going east in r-Friedhof, say "[desc-OOB]".
Instead of going southwest in r-Friedhof, say "[desc-OOB]".
Instead of going southeast in r-Friedhof, say "[desc-OOB]".
Instead of going west in r-Friedhof, say "[desc-OOB]".

Buschwerk is scenery in r-Friedhof. The printed name is "Buschwerk[n]".
The description is "Kleine Büsche fassen den Friedhof ein und bieten etwas Schutz vor dem schneidenden Wind."
Understand "Busch[m]", "Buesche[p]", "Gebuesch[n]" as Buschwerk.

The Kreuze is scenery in r-Friedhof. The printed name is "Grabkreuze[-n][p]".
The description is "Vier Grabkreuze."
Understand "erstes Kreuz[n]", "zweites Kreuz[n]", "drittes Kreuz[n]", "viertes Kreuz[n]", "Kreuz[n]", "schiefe Kreuze[p]", "Kreuze[p]", "Grabkreuz[n]", "Grabkreuze[p]", "Huegel[m]" as Kreuze.

The Gräber is scenery in r-Friedhof. The printed name is "Gräber[-n][p]".
The description is "Vier Gräber."
Understand "erstes Grab[n]", "zweites Grab[n]", "drittes Grab[n]", "viertes Grab[n]", "Grab[n]", "Graeber[p]", "Steine[p]", "Grabstaette[f]", "Grabstaetten[p]" as Gräber.

The Gecko is verschwunden and scenery in r-Friedhof. The printed name is "Gecko[m]". Understand "Echse[f]" as Gecko.

Instead of examining Kreuze:
	say "Welches der Kreuze möchtest du lesen?";	
	switch to cyoa at pg-Kreuze-menu.

pg-Kreuze-menu is a page. 

pg-Kreuze-page1 is a page. 
The description is "'Biff Clayton'[line break]'1837-1868'".
The cdesc is "Erstes Kreuz". It is for pg-Kreuze-menu. It is a dead-end.

[Frau von Bill]
pg-Kreuze-page2 is a page. 
The description is "'Mathilda Brooks geb. Walker'[line break]'1808-1869'[if Bills-Frau is proper-named][paragraph break]Das ist wahrscheinlich das Grab von Bills Frau.[end if]".
The cdesc is "Zweites Kreuz". It is for pg-Kreuze-menu. It is a dead-end.
A page-toggle rule for pg-Kreuze-page2:
	if pg-Bill-zwicker2 is active:
		now pg-Bill-zwicker2 is inactive;
		now pg-Bill-frau is active;
		now Bills-Frau is found;
	else:
		now Bills-Frau is found;
		now pg-Bill-frau is active.

pg-Kreuze-page3 is a page. 
The description is "'Wendy Porter'[line break]'1816-1875'".
The cdesc is "Drittes Kreuz". It is for pg-Kreuze-menu. It is a dead-end.

[Mutter von Lucy]
pg-Kreuze-page4 is a page. 
The description is "'Lucille Thompson geb. Powell'[line break]'1845-1878'".
The cdesc is "Viertes Kreuz". It is for pg-Kreuze-menu. It is a dead-end.

pg-Kreuze-end is a page. 
The cdesc is "Beenden". It is for pg-Kreuze-menu. It is an end-page.

Instead of examining Gräber:
	say "Welches der Gräber möchtest du untersuchen?";
	switch to cyoa at pg-Gräber-menu.

To say desc-Grab-leer:
	say "Du siehst nichts Besonderes, und ohne triftigen Grund möchtest du nicht auf dem Grab herumwühlen.[run paragraph on]";

pg-Gräber-menu is a page. 

pg-Gräber-page1 is a page. 
The description is "[desc-Grab-leer]".
The cdesc is "Erstes Grab". It is for pg-Gräber-menu. It is a dead-end.

[Frau von Bill]
pg-Gräber-page2 is a page. 
The description is "[if Bills-Frau is proper-named and Bills-Frau is found and player does not have Zwicker]Du streichst vorsichtig mit den Fingern durch den feinen Sand auf dem Grab, bis deine Finger etwas ertasten.[paragraph break]Da ist er, Bills Zwicker![paragraph break]Du bläst behutsam den Sand von den Linsen und steckst ihn ein.[else][desc-Grab-leer][end if]".
The cdesc is "Zweites Grab". It is for pg-Gräber-menu. It is a dead-end.
A page-toggle rule for pg-Gräber-page2: 
	if Bills-Frau is proper-named and Bills-Frau is found and player does not have Zwicker:
		now Zwicker is found;
		now pg-Gräber-page2 is inactive;
		now pg-Gräber-page2-found is active.

pg-Gräber-page2-found is a page.
The description is "Ruhe in Frieden, Mathilda.".
The cdesc is "Zweites Grab". It is for pg-Gräber-menu. It is a dead-end. It is inactive.

pg-Gräber-page3 is a page. 
The description is "[desc-Grab-leer]".
The cdesc is "Drittes Grab". It is for pg-Gräber-menu. It is a dead-end.

pg-Gräber-page4 is a page. 
The description is "[desc-Grab-leer]".
The cdesc is "Viertes Grab". It is for pg-Gräber-menu. It is a dead-end.

pg-Gräber-end is a page. 
The cdesc is "Beenden". It is for pg-Gräber-menu. It is an end-page.
A page-toggle rule for pg-Gräber-end:
	if Zwicker is found and player does not have Zwicker and Ladenmann does not have Zwicker:
		now player has Zwicker;
		now pg-Bill-zwicker2 is inactive;
		now pg-Bill-zwicker-found is active.

Test 9 with "Test X / o / n / x kreuz / 1 / 2 / 3 / 4 / 5 / x grab / 1 / 2 / 3 / 4 / 5"

Section 10 - Mine

r-Mine is a room. The printed name is "Mine[f]".
The description is "[if unvisited]Nach einem kurzen Stück staubiger Straße erhebt sich eine niedrige Hügelkette vor dir. Einige Minuten später erkennst du den Eingang zu einer Mine.[paragraph break][end if]Der Eingang der Mine wird zu beiden Seiten von Fackeln erhellt. Eine dünne Rauchfahne zieht am höchsten Punkt des Stollens nach oben und verliert sich schnell im Wind.[paragraph break]An einem leeren Karren lehnt ein hohläugiger Mann mit zerzaustem schwarzem Haar und spielt mit seinem Gewehr herum.[if Taschentuch is in r-Mine][paragraph break]Am Wegrand blitzt etwas Weißes hinter einem kleinen Strauch hervor.[end if][paragraph break]Der Weg nach Osten führt zurück in die Stadt.".
r-Mine is west of r-Ranch.
Instead of going north in r-Mine, say "[desc-OOB]".
Instead of going northwest in r-Mine, say "[desc-OOB]".
Instead of going northeast in r-Mine, say "[desc-OOB]".
Instead of going south in r-Mine, say "[desc-OOB]".
Instead of going southwest in r-Mine, say "[desc-OOB]".
Instead of going southeast in r-Mine, say "[desc-OOB]".
Instead of going west in r-Mine, try examining Minenmann.
The Geruch of r-Mine is "Es riecht leicht nach Rauch."

A Hügelkette is scenery in r-Mine. The printed name is "Hügelkette[f]".
The description is "Die Hügelkette erstreckt sich von Nordosten nach Süden.".
Understand "Huegelkette", "Berg[m]", "Huegel[p]", "Berge[p]" as Hügelkette.

A Mine is scenery in r-Mine. The printed name is "Mineneingang[m]".
The description is "Bis auf ein paar leere Karren und Fackeln kannst du am Eingang der Mine nicht viel erkennen."
Understand "Mine[f]", "Eingang[m]", "Mineneingang[m]", "Karre[f]", "Karren[p]", "Fackel[f]", "Fackeln[p]", "Stollen[m]" as Mine.
Instead of doing anything except examining with the Mine:
	say "Viel zu weit weg und gut bewacht. Vielleicht musst du einen anderen Weg finden.";

A Rauch is scenery in r-Mine. The printed name is "Rauch[m]".
The description is "Konstant dringt schwarzer Rauch aus der Mine. Vielleicht von den Fackeln, die dort unten brennen, oder von anderen Minenarbeiten verursacht."
Understand "Rauch[m]","Fahne[f]","Rauchfahne[f]" as Rauch.

A Minenmann is a man in r-Mine. The printed name is "Mann[m]".
Minenmann can be sauer. Minenmann is not sauer.
Instead of doing anything except shooting with Minenmann:
	say "Als du näher herangehst, richtet der Mann sein Gewehr auf dich.[paragraph break][if Minenmann is not sauer]'Verpiss['] dich von hier, aber schnell!'[else]'Sach ma['] hörst du schlecht? [one of]Zieh['] Leine!'[or]Hau['] ab!'[or]Verpiss['] dich!'[at random][end if][line break]Du hebst entschuldigend die Hände und gehst zurück.";
	now Minenmann is sauer.

Instead of shooting Minenmann:
	say "Du kannst ihn nicht einfach über den Haufen schießen, das ist einerseits nicht sehr nett und zum anderen würde das vermutlich weitere ähnlich schlecht gelaunte Gestalten auf den Plan rufen.[paragraph break]Vielleicht gibt[']s ja noch einen anderen Weg in die Mine."

Understand "Mann[m]", "Haar[n]", "Gewehr[n]" as Minenmann.

A Strauch is scenery in r-Mine. The printed name is "Strauch[m]".
The description of Strauch is "[if Taschentuch is in r-Mine]Neben dem Strauch liegt ein Taschentuch, halb von Sand bedeckt.[else]Ein kleiner Strauch steht am Wegrand.[end if]".
Understand "Wegrand[m]", "Busch[m]" as Strauch.

Weißes is scenery in r-Mine. The printed name is "Weißes[m]".
The special indefinite article of Weißes is no article.
The description is "Es ist ein Taschentuch."
Understand "weisses", "weisse[n]" as Weißes.

Instead of taking Weißes:
	say "Es ist ein Taschentuch. Du steckst es ein.";
	now the player has Taschentuch;
	now pg-Barfrau-Taschentuch is active;
	now pg-Sheriff-Taschentuch is active;
	now pg-Barbier-Mine is active.

Instead of taking Taschentuch when Taschentuch is in r-Mine:
	say "Du steckst das Taschentuch ein.";
	now the player has Taschentuch;
	now pg-Barfrau-Taschentuch is active;
	now pg-Sheriff-Taschentuch is active;
	now pg-Barbier-Mine is active.

Test 10 with "Test X / w / w / rede mit mann / o / w / rede mit mann / x busch / x taschentuch / nimm taschentuch".

Section 11 - Windrad

r-Windrad is a room. The printed name is "Windrad[n]".
The description is "[if unvisited]Nach einigen Metern kommst du an das Windrad, das du durch das Fenster deines Zimmers sehen konntest.[paragraph break][end if]Das Windrad ist in etwa fünfzehn Meter Höhe auf einen aus langen Metallstangen bestehenden Gittermast montiert und quietscht bei jeder Bewegung. Eine Heckfahne aus Metall stellt die Rotorblätter automatisch in Windrichtung.[paragraph break]Im Norden geht es zurück zur Ranch. Ein Weg führt nach Westen Richtung Hügelkette.[random-event]".
The Geruch of r-Windrad is "Du riechst nichts Besonderes. Das quietschende Rad nimmt deine Sinne ziemlich in Beschlag.".
r-Windrad is south of r-Ranch.

Instead of going northwest in r-Windrad, say "[desc-OOB]".
Instead of going northeast in r-Windrad, say "[desc-OOB]".
Instead of going east in r-Windrad, say "[desc-OOB]".
Instead of going south in r-Windrad, say "[desc-OOB]".
Instead of going southwest in r-Windrad, say "[desc-OOB]".
Instead of going southeast in r-Windrad, say "[desc-OOB]".

Instead of going up in r-Windrad:
	say "Du bist nicht schwindelfrei.";
	
A Windrad is scenery in r-Windrad. The printed name is "Windrad[n]".
The description is "Das Windrad dreht sich leicht im Wind und quietscht dabei herzzerreißend.".
Understand "Rad", "Fahne[f]", "Heckfahne[f]", "Rotor[m]", "Rotorblätter[p]" as Windrad.

A Mast is scenery in r-Windrad. The printed name is "Gittermast[m]".
The description is "Der Gittermast besteht aus verschweißten Metallstangen.[if Stange is not abgerissen] Eine der Stangen in Bodennähe scheint sich gelöst zu haben.[end if]".
Understand "Gittermast", "Turm[m]" as Mast.

The Kojoten are verschwunden and scenery in r-Windrad. The printed name is "Kojoten[p]". Understand "Kojote[m]" as Kojoten.

Instead of climbing Mast, try climbing Windrad.
Instead of climbing Windrad:
	say "Du bist nicht wirklich schwindelfrei, und da oben ist auch nichts, was du brauchst.";

A Stange is a thing in r-Windrad. The printed name is "Metallstange[f]".
Understand "Stange[f]", "Metallstange[f]", "Stangen[p]", "Metallstangen[p]" as Stange.

A Stange can be abgerissen. The Stange is not abgerissen.
Stange is sperrig.
The description is "Eine etwa drei Meter lange, massive Metallstange mit einem Durchmesser von etwa fünf Zentimetern.".
Instead of taking the Stange:
	if the Stange is not abgerissen:
		say "Du hebelst die Stange hin und her, bis sich die verbliebene Schweißnaht vom Gittermast löst. Sie ist so lang und schwer, dass du sie mit beiden Händen tragen musst.";
		now player has Stange;
		now the Stange is abgerissen;
		now the Stange is ablegbar;
	else if Brocken is entfernt:
		say "Die lange Metallstange ist verbogen und noch unhandlicher als vorher. Du willst sie nicht mehr mit dir herumtragen.";
	else if Player has Stange:
		say "Du trägst die Stange bereits.";
	else:
		say "Du nimmst die Metallstange an dich.";
		now player has Stange;

After dropping the Stange:
	say "Du legst die Stange auf den Boden.".

A description-concealing rule:
	if the Stange is abgerissen and Brocken is not entfernt:
		now the Stange is marked for listing;


Test 11 with "Test X / w / s / nimm stange / lass Stange fallen / l".

Section 12 - Berg

r-Huegelkette is a room. The printed name is "Hügelkette[f]".
The description is "[if unvisited]Nach ein paar Minuten Fußmarsch stehst du am Fuße einer niedrigen Hügelkette.[paragraph break][end if]Ein großes Geröllfeld aus größeren und kleineren Felsen erstreckt sich hunderte Meter weit über die gesamte Breite. Die Hügel bieten guten Schutz vor dem Wind, es ist hier beinahe windstill.[paragraph break][if Brocken is entfernt][desc-Brocken-entfernt][line break][end if]Der Weg im Osten führt zurück zum Windrad vor der Stadt.[desc-Berg]".
Understand "Berg[m]", "Huegelkette[f]" as r-Huegelkette.
The Geruch of r-Huegelkette is "Es riecht leicht nach Rauch.".
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
		say "Du siehst keinen Weg in dieser Richtung.";
	else:
		say "Du kannst dich nicht an dem Brocken vorbeizwängen, der Spalt ist [if Spalt is bearbeitet]immer noch [end if]nicht breit genug.";

To say desc-Berg:
	if player has Papagei and Brocken is not entdeckt:
		say "[paragraph break]Molly trippelt unruhig auf deiner Schulter auf und ab.[run paragraph on]";
	else if Brocken is entdeckt and Papagei is in r-Huegelkette:
		say "[paragraph break]Auf einem Felsbrocken sitzt Molly und flattert aufgeregt mit den Flügeln.[run paragraph on]".

A Geröllfeld is scenery in r-Huegelkette. The printed name is "Geröllfeld[n]".
The description is "[desc-Geröllfeld]".
The Geruch of Geröllfeld is "Es riecht ganz leicht nach Rauch.".
Understand "Steine[p]", "Geroell[n]", "Geroellfeld[n]", "Felsen[p]", "Rauch[m]" as Geröllfeld while Brocken is not entdeckt.
Understand "Steine[p]", "Geroell[n]", "Geroellfeld[n]", "Rauch[m]" as Geröllfeld while Brocken is entdeckt.

To say desc-Geröllfeld:
	if player has Papagei:
		now Brocken is entdeckt;
		now pg-Barbier-molly2 is inactive;
		say "Du gehst das Geröllfeld auf und ab, als Molly plötzlich aufgeregt zu flattern beginnt und von deiner Schulter auf einen der Felsbrocken hüpft. 
		
		'Braak! BRAAAAK! FEURIOOOO!'[run paragraph on][line break]";
	else if Brocken is entfernt:
		say "[desc-Brocken-entfernt]";
	else if Brocken is entdeckt:
		say "Hier liegt der Brocken, den Molly entdeckt hat.[run paragraph on][line break]";
	else:
		say "Du gehst das Geröllfeld auf und ab, kannst aber mit bloßem Auge nichts Besonderes zwischen den Felsbrocken entdecken. 
		
		Einmal meinst du den Geruch von Rauch wahrgenommen zu haben, aber du kannst den genauen Ursprung nicht feststellen.[run paragraph on][line break]".

After examining Geröllfeld:
	if player has Papagei and Brocken is entdeckt:
		now Papagei is in r-Huegelkette;
		now pg-Bill-Kuhfuß is active.

A Weg is scenery in r-Huegelkette. The printed name is "Weg[m]".
The Weg is unwichtig.

A Brocken is a thing in r-Huegelkette. The printed name is "Felsbrocken[m]".
The description is "[desc-Brocken][run paragraph on]".
Understand "Brocken", "Felsbrocken", "Fels", "Feurio[n]", "Stein" as Brocken while player is in r-Huegelkette and Brocken is not entdeckt.
Understand "Brocken", "Felsbrocken", "Fels", "Felsen", "Feurio[n]", "Stein" as Brocken while player is in r-Huegelkette and Brocken is entdeckt.

A Brocken can be entdeckt. Brocken is not entdeckt.
A Brocken can be entfernt. Brocken is not entfernt.

Instead of pushing the Brocken, try taking the Brocken.
Instead of pulling the Brocken, try taking the Brocken.
Instead of taking the Brocken:
	if Brocken is entfernt:
		say "Der Brocken liegt ganz gut da.";
	else if Brocken is entdeckt:
		say "Du drückst und ziehst nach Leibeskräften an dem Brocken herum, aber er bewegt sich nicht. Ohne Werkzeug kommst du hier wohl nicht weiter.";
	else:
		say "Du willst im Geröllfeld nicht ziellos herumsuchen.";

To say desc-Brocken:
	if Brocken is entfernt:
		say "Der Brocken liegt einsam am Ende des Geröllfeldes, etwa zwanzig Schritte entfernt von dem Stolleneingang im Norden, den er zuvor verschlossen hat.";
	else if Brocken is entdeckt:
		say "Auf dem Felsbrocken sitzt Molly und flattert aufgeregt. Als du den Brocken genauer untersuchst, erkennst du einen offenbar größeren Hohlraum hinter einem [if Spalt is not bearbeitet]daumen[end if]breiten Spalt.";
		now pg-Bill-Kuhfuß is active;
	else: [nicht entdeckt]
		say "Du kannst nichts Besonderes zwischen den Felsbrocken entdecken.";

To say desc-Brocken-entfernt:
	say "Richtung Norden ist ein etwa schulterhoher, schmaler Durchgang zwischen den Steinen zu erkennen, daneben liegt eine verbogene Metallstange. Einige Schritte weiter liegt der Felsbrocken, der den Stolleneingang zuvor verschlossen hat.";

A Spalt is a thing in r-Huegelkette. The printed name is "Spalt[m]".
A Spalt can be bearbeitet. Spalt is not bearbeitet.
A Spalt can be bestangt. Spalt is not bestangt.
A Spalt is fixed in place.
The description is "[desc-Spalt]".
The Geruch of Spalt is "Es riecht deutlich nach Rauch.".
Understand "Spalte[f]", "Luecke[f]", "Felsspalte[f]", "Hohlraum[m]", "Loch[n]", "Luftzug[m]", "Zug[m]", "Stollen[m]", "Stolleneingang[m]" as Spalt.

To say desc-Spalt:
	if Brocken is entfernt:
		say "An Stelle des Felsens ist jetzt ein schmaler Stolleneingang in Richtung Norden sichtbar.[run paragraph on][line break]";
	else:
		say "Hinter einem [if Spalt is not bearbeitet]daumen[end if]breiten Spalt befindet sich offenbar ein größerer Hohlraum. Wenn du die Hand hineinhältst, kannst du einen schwachen Luftzug spüren.[run paragraph on][line break]".

Instead of opening the Spalt:
	say "Mit bloßen Händen kannst du den Spalt nicht öffnen.".

Instead of inserting something into the Spalt:
	try using the noun on the second noun instead.

Instead of unlocking the Spalt with something:
	try using the second noun on the noun instead.

Instead of pushing the Stange, try pulling the Stange.
Instead of pulling the Stange:
	say "Du drückst und ziehst, aber die Stange biegt sich keinen Millimeter.";

Test 12 with "Test x / w / s / w / x geröll / l / e / purloin molly / purloin brecheisen / purloin stange / w / x geröll / l / x spalt / benutze brecheisen mit spalt / x spalt / benutze stange mit spalt / l / x brocken / x spalt".

Test 12b with "Test 12 / stecke stange in spalt / e / nimm stange / w / stecke stange in spalt".

[Brecheisen]
Test 12c with "Test 12b / purloin brecheisen / stecke brecheisen in spalt / stecke stange in spalt / drücke stange".

Section 13 - Höhle

r-Hoehle is a room. The printed name is "Höhle[f]".
The description is "[desc-hoehle]".
Understand "Hoehle[f]" as r-Hoehle.

The Geruch of r-Hoehle is "Es riecht leicht nach Rauch und feuchtem Stein. Und irgendwie leicht süßlich, ein dir bislang völlig unbekannter Geruch."

To say desc-hoehle:
	if r-Hoehle is unvisited:
		say "Du zwängst dich durch den engen Spalt. Nach einigen Metern kannst du bequem stehen und dich frei bewegen.[paragraph break]";
	say "Die Luft ist angenehm kühl und feucht. Es riecht leicht nach Rauch.[run paragraph on][if Lampe is not lit] Du kannst kaum die Hand vor Augen sehen.[else] Ein großer, spitzer Felsbrocken markiert den Rand eines Abgrunds im Norden.[end if]";
	if Seil is angebunden:
		say "[line break]Ein Seil ist an den Felsbrocken gebunden.";
	say "[line break]Im Süden dringt fahles Licht durch den langen, schmalen Höhleneingang.[run paragraph on]";

Instead of going northeast in r-Hoehle: try going west instead.
Instead of going northwest in r-Hoehle: try going west instead.
Instead of going southeast in r-Hoehle: try going west instead.
Instead of going southwest in r-Hoehle: try going west instead.
Instead of going east in r-Hoehle: try going west instead.
Instead of going north in r-Hoehle: try going down instead.
Instead of getting off Seil in r-Hoehle: try going down instead.
Instead of getting off Abgrund in r-Hoehle: try going down instead.
Instead of getting off Spitzfelsen in r-Hoehle: try going down instead.

Instead of going west in r-Hoehle:
	if Lampe is not lit:
		say "Du tastest die Wand vorsichtig ab. ";
		if Lampe is not allowed-to-take:
			now pg-Bill-Laterne is active;
			now pg-Barfrau-Laterne is active;
	say "Hier geht es nicht weiter.".

Instead of going down in r-Hoehle:
	if Lampe is not lit:
		say "[if Spitzfelsen is not entdeckt]Du tastest dich vorsichtig voran...[paragraph break]Aua! Du hast dir das Schienbein an einem größeren Felsen oder sowas gestoßen.[paragraph break][end if]Es ist zu dunkel hier, um weiterzugehen, du könntest dich ernsthaft verletzen.";
		now Spitzfelsen is entdeckt;
		now pg-Bill-Laterne is active;
		now pg-Barfrau-Laterne is active;
	else if Seil is not angebunden:
		say "Der Abgrund ist viel zu steil um ohne Hilfsmittel gefahrlos hinunter klettern zu können, vor allem wenn du dabei noch die Lampe halten musst.";
		if player does not have Seil:
			now Abgrund is entdeckt;
			now pg-Bill-Abgrund is active;
			now pg-Barfrau-Abgrund is active;
	else if Seil is angebunden: [hat Seil]
		if r-Gewoelbe is unvisited:
			say "[desc-abseilen]";
			now r-Hoehle is above r-Gewoelbe;
			now r-Gewoelbe is below r-Huegelkette;
		now player is in r-Gewoelbe.

To say desc-abseilen:
	say "Du nimmst den Henkel der Petroleumlampe zwischen die Zähne und greift mit beiden Händen das Seil.
	
	Die Füße gegen die Felswand gestemmt, seilst du dich langsam ab.";
	screenbreak;

A Spitzfelsen is scenery in r-Hoehle. The printed name is "Felsen[m]".
The description is "[desc-Spitzfelsen][run paragraph on]".
Understand "Felsbrocken[m]", "Brocken[m]", "Fels[m]", "Felsen[m]", "Stein[m]" as Spitzfelsen while player is in r-Hoehle.
Spitzfelsen is not entdeckt.
Instead of tying the Seil to the Spitzfelsen, try using Seil on Spitzfelsen.

To say desc-Spitzfelsen:
	if Lampe is not lit:
		say "Der Felsen fühlt sich feucht und glatt an.";
	else:
		say "Ein mannshoher, spitzer Felsen steht direkt am Rand eines Abgrunds.";

A Abgrund is a thing in r-Hoehle. The printed name is "Abgrund[m]".
The description is "[desc-Abgrund][run paragraph on]".
Understand "Loch[n]" as Abgrund.
Abgrund is not entdeckt.

To say desc-Abgrund:
	if player does not have Lampe or Lampe is not lit:
		say "Du kannst nichts erkennen.";
	else if Abgrund is entdeckt:
		say "Trotz Lampe kannst du keinen Boden erkennen. Es ist auf jeden Fall zu tief, um zu springen.";
	else:
		say "Du stehst am Rande eines Abgrunds. Trotz Lampe kannst du keinen Boden erkennen.[paragraph break]Du schiebst mit dem Fuß einige Kiesel über den Rand und lauschst in die Dunkelheit...[paragraph break][italic type]Plopp![roman type][paragraph break]Klingt nach festem Boden, vielleicht fünf Meter, vielleicht auch zehn Meter tief. Auf jeden Fall zu tief, um zu springen.";
		now Abgrund is entdeckt;
		now pg-Bill-Abgrund is active;
		now pg-Barfrau-Abgrund is active;

Test 13 with "Test 12c / l / n / e / w / n".

[Abgrund]
Test 13b with "Test 5d / s / w / s / w / n / n / x Abgrund / runter / l".

[Abseilen]
Test 13c with "Test 13b / runter / purloin seil / benutze seil mit abgrund / purloin lampe / binde lampe an seil / binde seil an lampe / binde seil an felsen / runter".

Section 14 - Gewölbe

r-Gewoelbe is a room. The printed name is "Gewölbe[n]".
The description is "[if unvisited][Gewoelbe-desc-unvisited][end if][Gewoelbe-desc][run paragraph on]".
Understand "Gewoelbe[n]" as r-Gewoelbe.
The Geruch of r-Gewoelbe is "Rauch und verschiedene Dämpfe vermischen sich hier auf unangenehme Weise zu einem süßlichen, leicht stehenden Geruch. Du fühlst dich leicht benebelt."

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
		say "Willst du Lucy und Michael einfach hierlassen? Die Wache könnte jederzeit entdeckt werden.";
		stop the action;
	else:
		say "Du kannst Lucy und Michael nicht einfach ihrem Schicksal überlassen. Abgesehen davon bist du dir nicht einmal sicher, ob du das Seil wieder hochkommen würdest.";
		stop the action;

Check going east in r-Gewoelbe:
	if Lucy is entdeckt:
		say "[Gehe-Eingang-desc]";
		stop the action;

To say Geselle-geduckt:
	say "Du solltest dich schleunigst um die Wache vor dir kümmern. Die Zeit scheint still zu stehen, als du dir alle Handlungsmöglichkeiten durch den Kopf gehen lässt.";

To say Gewoelbe-desc-unvisited:
	say "Nach einer gefühlten Ewigkeit ertasten deine Füße endlich wieder festen Boden. Der Schweiß läuft dir den Rücken hinunter, als du dich von der Wand abwendest. Dein angestrengtes Keuchen malt kleine Dampfwölkchen in den Schein deiner Laterne.[paragraph break]Ein tiefes, offenbar nicht weit entferntes Rumpeln lässt dich blitzartig verstummen. Vorsichtig folgst du dem fahlen Lichtschein des gekrümmten Stollengangs vor dir.[paragraph break]Als sich der Gang weitet und immer heller wird, kannst du immer deutlicher Stimmen vernehmen. Vorsichtig gehst du hinter einem hüfthohen Steinvorsprung in Deckung, von dem du das große, mit unzähligen Fackeln erleuchtete Gewölbe unter dir überblicken kannst.";
	screenbreak;
	now Taschentuch is ablegbar;

To say Gewoelbe-desc:
	if Lucy is entdeckt:
		say "Mehrere Männer laufen vom Höhleneingang hinab in eure Richtung, einige mit gezogenen Waffen. Du nimmst die Situation wie in Zeitlupe wahr. Deine rechte Hand zuckt leicht.[run paragraph on]";
		if Diecount is greater than 1:
			say "[paragraph break][Eingang-desc]";
	else if Lucy is lauschend:
		say "[Gewoelbe-desc-Lauschen]";
		now Lucy is entdeckt;
	else:
		say "Etwa ein Dutzend Männer scheint in einiger Entfernung an verschiedenen Stationen zu arbeiten. Einige rühren in großen befeuerten Stahlkesseln, andere hantieren mit großen, mit Tüchern bespannten Bottichen, wieder andere scheinen so etwas wie Fladen auszuwalzen und Kugeln zu formen. Es stinkt ziemlich und dir wird etwas schwummrig.[paragraph break][Nische-desc][run paragraph on]";
	if Geselle is not geduckt and Geselle is not bewusstlos:
		say "[paragraph break]Davor sitzt ein mürrisch dreinschauender Geselle auf einem Stein, die Arme auf die Oberschenkel gestützt, mit einer Flinte in der rechten Hand.[run paragraph on]";

To say Gewoelbe-desc-Lauschen:
	[Calvin und Bob Mifflin, Ron Thompson]
	say "Ein sehr gepflegt aussehender Mann in mittlerem Alter mit Stock und Melone sowie ein deutlich schmutzigerer, wild gestikulierender Bursche schlendern in eure Richtung und bleiben nur ein paar Meter entfernt stehen.

	'Was sollen wir denn sonst machen, Ron? Die singen doch sofort, wenn wir die jetzt rauslassen!'

	'Für dich immer noch Mr. Thompson, Cal. Ich werde mit Lucy reden, wenn sie sich etwas beruhigt hat, dann sehen wir weiter.' Ah, das muss dann wohl Calvin Mifflin sein!";
	screenbreak;
	say "Der junge Mann blickt zu Boden und schüttelt den Kopf. 'Na ich weiß nicht Ro-- Mr. Thompson. Die hat ganz schön Haare auf den Zähnen.'

	Mit einer schnellen, fast beiläufigen Bewegung holt Thompson mit dem Stock aus und lässt den Knauf blitzschnell auf das linke Knie des Mannes niedersausen. 'AAAARGH!' schreit dieser überrascht auf und klappt augenblicklich zusammen.

	Als wäre nichts geschehen spricht Thompson mit gleichbleibend sonorer Stimme weiter. 'Es steht dir nicht zu, so über sie zu sprechen. Wenn sie und ihr Stallbursche nicht zur Besinnung kommen, werden wir leider eine andere Lösung finden müssen.'

	Lucy läuft purpurrot an. 'DU VERDAMMTER---'[line break]";
	screenbreak;
	say "Michael presst Lucy schnell eine Hand auf den Mund, doch es ist zu spät. Thompson tritt zwei Schritte zur Seite, um in die Nische zu blicken. Seine Augen weiten sich.

	'Die Gefangenen sind frei! Hierher, sofort!'

	Mehrere Männer blicken auf und laufen vom Höhleneingang hinab in eure Richtung, einige greifen nach ihren Waffen.[run paragraph on]";

A Gewölbe-scenery is scenery in r-Gewoelbe. The printed name is "Sachen[p]".
The description is "[Gewölbe-scenery-desc][line break]".
To say Gewölbe-scenery-desc:
	say "Du kannst von hier aus nichts Genaueres erkennen, es interessiert dich im Moment aber auch nicht weiter.[run paragraph on]".

Understand "Station[f]", "Stationen[p]", "Kessel[p]", "Stahlkessel[p]", "Tuecher[p]", "Bottich[m]", "Bottiche[p]", "Kugel[f]", "Kugeln[p]", "Fladen[p]", "Fackel[f]", "Fackeln[p]", "Vorsprung[m]" as Gewölbe-scenery.

Some Männer is scenery in r-Gewoelbe. The printed name is "Männer[p]".
The description is "[Männer-desc]".
Understand "Maenner[p]", "Buergermeister[m]", "Thompson", "Banditen[p]", "Verbrecher[p]", "Stieffvater[m]", "Arbeiter[p]", "Mifflin" as Männer.
Instead of telling the Männer about, say "Jetzt ist Zeit zu handeln, nicht zu sprechen.";

To say Männer-desc:
	if Lucy is entdeckt:
		say "Die Männer kommen auf euch zu. Obwohl sie rennen, nimmst du ihre Bewegungen wie in Zeitlupe wahr.[run paragraph on][line break]";
	else:
		say "Fast alle wirken sehr beschäftigt.[run paragraph on][line break]";

A Eingang is scenery in r-Gewoelbe. The printed name is "Eingang[m]".
The description is "[Eingang-desc][line break]".
Understand "Eingang[m]", "Hoehleneingang[m]" as Eingang.

To say Eingang-desc:
	if Lucy is entdeckt:
		say "Alles wirkt wie verschwommen, aber neben dem Höhleneingang springt dir ein mit Fässern beladener Karren ins Auge.[run paragraph on]";
		if Diecount is greater than 2:
			say " [Keil-desc]";
	else:
		say "[line break]Am Höhleneingang im Osten steht ein mit Fässern beladener Karren.[run paragraph on]";

A Fässer is scenery in r-Gewoelbe. The printed name is "Fässer[p]".
The description is "[Fässer-desc][line break]".
Understand "Fass[n]", "Faesser[p]", "Holzfaesser[p]" as Fässer.
To say Fässer-desc:
	if Lucy is entdeckt:
		say "Mehrere Holzfässer. Auf einem kannst du die Buchstaben [bold type]NG[roman type] erkennen.[run paragraph on]";
	else:
		say "Am Höhleneingang im Osten steht ein mit Fässern beladener Karren.[run paragraph on]";
Instead of taking Fässer:
	say "Die Fässer sind viel zu weit weg.[run paragraph on]";

A Karren is scenery in r-Gewoelbe. The printed name is "Karren[m]".
The description is "[Karren-desc][line break]".
Understand "Karren[m]", "Rad[n]", "Raeder[p]" as Karren.
To say Karren-desc:
	if Lucy is entdeckt:
		say "Ein Karren mit vier Speichenrädern, mit mehreren Holzfässern beladen.[paragraph break]Ein großer Holzkeil unter einem der Räder hindert den Karren daran wegzurollen.[run paragraph on]";
	else:
		say "Am Höhleneingang im Osten steht ein mit Fässern beladener Karren.[run paragraph on]";

Instead of doing anything except examining or shooting with the Karren:
	say "Der ist viel zu weit weg.";

A Keil is scenery in r-Gewoelbe. The printed name is "Keil[m]".
The description is "[Keil-desc][line break]".
Understand "Keil[m]", "Holzkeil[m]" as Keil.
To say Keil-desc:
	if Lucy is entdeckt:
		say "Ein großer Holzkeil blockiert eines der Räder und hindert den Karren daran wegzurollen.[run paragraph on]";
	else:
		say "Am Höhleneingang im Osten steht ein mit Fässern beladener Karren, eines der Vorderräder mit einem Holzkeil arretiert.[run paragraph on]";
Instead of taking Keil:
	say "Da kommst du nicht ran. Du musst ihn irgendwie anders entfernen.";

A Geselle is a man in r-Gewoelbe. The printed name is "Geselle[-n][m]".
The description is "[Geselle-desc][run paragraph on]".
Understand "Mann[m]", "Stein[m]", "Arm[m]", "Arme[p]", "Oberschenkel[p]", "Flinte[f]", "Hand[f]", "Wache[f]", "Waechter[m]", "Sand[m]", "Hinterkopf[m]" as Geselle.
To say Geselle-desc:
	if Geselle is bewusstlos:
		say "Die Wache liegt mit dem Gesicht voraus im Dreck und rührt sich nicht mehr.";
	else if Geselle is geduckt:
		say "Ein einladender Hinterkopf mit trockenem schwarzem Haar.";
	else:
		say "Der Mann blickt mürrisch vor sich auf den Boden und scharrt mit den Füßen im Sand. Gelegentlich wirft er einen Blick auf das junge Paar in dem behelfsmäßigen Käfig oder lässt seinen Blick in deine Richtung schweifen, aber du bist im Halbdunkel hinter dem Felsvorsprung offenbar nicht zu erkennen.";

Michael is a man in r-Gewoelbe. The printed name is "Bursche[m]".
The description is "Der junge Mann legt immer wieder seine Hand auf den Arm seiner Begleitung oder streicht ihr beruhigend über das Gesicht.".
Understand "Paar[n]" as Michael.

A Felsnische is scenery in r-Gewoelbe. The printed name is "Felsnische[f]". 
The description is "[Nische-desc][line break]".
Understand "Nische[f]", "Kaefig[m]", "Gitter[n]", "Niesche[f]" [sic] as Felsnische.
To say Nische-desc:
	if Lucy is not eingesperrt:
		say "Lucy und Michael stehen gebückt im Halbdunkel neben ihrem ehemaligen Gefängnis und blicken angestrengt auf das Treiben in der Höhle.[run paragraph on]";
	else if Geselle is bewusstlos:
		say "Lucy und Michael rütteln an den Gitterstäben und gestikulieren wild in deine Richtung. Bei dir verfestigt sich langsam der Eindruck, dass sie dringend mit dir sprechen möchten.[run paragraph on]";
	else:
		say "Nur wenige Meter von dir entfernt befindet sich eine größere Felsnische. Hinter zusammengebundenen Gittern kauert ein junges Paar auf dem Boden und flüstert manchmal miteinander. Das ist Lucy! Dann muss der junge Mann wohl Michael sein.[run paragraph on]";

Instead of attacking Geselle:
	say "Ohne Waffe ist das zu riskant. Ein offener Kampf würde sicher schnell bemerkt.[paragraph break]Wenn er doch nur ein bisscher näher käme...".

Instead of attacking something with something:
	if noun is Geselle:
		if Geselle is bewusstlos:
			say "Ich glaube der hat erstmal genug.";
		else if Geselle is geduckt:
			if the second noun is Revolver or the second noun is Brecheisen or the second noun is Schaufel:
				say "BAUZ! Du streckst den Mann mit einem gezielten Schlag mit [dem second noun] nieder.[paragraph break]Du siehst dich verstohlen um, aber keiner der Arbeiter scheint etwas gehört zu haben. Du steckst das leuchtende Taschentuch schnell wieder ein.";
				now Geselle is not geduckt;
				now Geselle is bewusstlos;
				now player has Taschentuch;
				now Taschentuch is not ablegbar;
			else:
				say "[Der second noun] ist dazu nicht besonders gut geeignet.";
		else:
			say "Er ist zu weit weg und schaut außerdem immer wieder in deine Richtung.";
	else if the second noun is Revolver:
		try using Revolver on the noun;
	else:
		say "[desc-funktioniert-nicht]";

Instead of telling Geselle about:
	if Geselle is bewusstlos:
		say "Der sagt nicht mehr viel.";
	else:
		say "Keine gute Idee. Er könnte um Hilfe rufen.";

Instead of telling Michael about when Michael is in r-Gewoelbe:
	try telling Lucy about "dummy".

[Taschentuch]
Instead of waving Taschentuch, try dropping Taschentuch.
Instead of dropping Taschentuch:
	if Taschentuch is not ablegbar:
		say "Das willst du vorerst lieber behalten.";
	else:
		say "Du nimmst das leuchtend weiße Taschentuch in die Hand und lässt es über den Rand des Felsvorsprungs gleiten, als die Wache kurz zu den Gefangenen schaut.[paragraph break]Einen Moment später dreht der Mann den Kopf wieder in deine Richtung und runzelt irritiert die Stirn. Er steht auf, kommt langsam in deine Richtung und bückt sich direkt vor dir nach dem Taschentuch.[paragraph break]'Wo zum Teufel kommt das denn her?'";
		now Geselle is geduckt;

After telling Lucy about when player is in r-Gewoelbe:	
	if Geselle is not bewusstlos:
		say "Vielleicht später, erst musst du dich um die Wache kümmern.";
	else if Lucy is entdeckt:
		say "Jetzt ist Zeit zu handeln, nicht zu sprechen.";
	else:
		switch to cyoa at pg-Paar-menu.

pg-Paar-menu is a page.

pg-Paar-Allesklar is a page. 
"Lucy funkelt dich an, ihr Gesichtsausdruck eine wilde Mischung aus Verzweiflung und blanker Wut. 'Hol['] uns bitte hier raus, verdammt!'

Du hebelst die Gitter mit Hilfe deines Brecheisens auseinander, so dass sich beide gerade so hindurchzwängen können.

Der junge Mann atmet erleichtert auf und streckt dir die Hand entgegen. 'Vielen Dank Sir. Ich bin Michael.'".
The cdesc is "'Alles klar bei euch?'" It is for pg-Paar-menu. It is a dead-end. It is one-off.
A page-toggle rule for pg-Paar-Allesklar: 
	now Lucy is not eingesperrt;
	now pg-Paar-Passiert is active.

pg-Paar-Passiert is a page. It is inactive.
"'Dafür haben wir jetzt keine Zeit!', zischt Lucy aufgeregt. 'Die panschen hier irgendeine Sauerei zusammen, und mein Stiefvater steckt da mit drin!'

	Ihre Augen weiten sich und sie zieht euch beide hastig zurück hinter den schmalen Felsvorsprung. 'Achtung, da kommen sie!'".
The cdesc is "'Was ist hier passiert?'" It is for pg-Paar-menu. It is a dead-end.
A page-toggle rule for pg-Paar-Passiert: 
	now Lucy is lauschend;
	now pg-Paar-Passiert is inactive.

pg-Paar-end is a page. 
The cdesc is "Gespräch beenden". It is for pg-Paar-menu. It is an end-page.

[Tode]
To say Flucht-desc:
	say "Du packst Lucy und Michael und schiebst sie hinüber Richtung Felsvorsprung. Kugeln zischen an euren Köpfen vorbei, und als du dich umdrehst, fühlst du einen gellenden Schmerz in der linken Schulter, der dich zu Boden wirft.[Licht-desc]";

To say Gehe-Eingang-desc:
	say "Du hebst beschwichtigend die Arme und gehst einen Schritt auf die Männer zu.
		
		'Leute, das ist doch nur ein Missverst-'
		
		Der Lärm ist ohrenbetäubend als mehrere Männer gleichzeitig das Feuer auf dich eröffnen. Von mehreren Kugeln getroffen, sackst du zu Boden.[Licht-desc]";

To say Schiess-Männer-desc:
	say "Du reißt den Revolver hoch und triffst zwei der heranstürmenden Männer in Brust und Bauch, ehe dir eine Kugel das Knie zerfetzt. Schreiend sinkst du zu Boden.[Licht-desc]";

To say Schiess-Karren-desc:
	say "Blitzschnell ziehst du den Revolver und schießt auf den Karren.[paragraph break]Der Karren wackelt leicht, kippt aber nicht um.[paragraph break]Ein Gewehrkolben trifft dich brutal an der Stirn als dich die Männer erreichen und überwältigen.[Licht-desc]";

To say Schiess-Fässer-desc:
	say "Du ziehst den Revolver hoch, legst an und schießt auf die Fässer auf dem Karren.[paragraph break]Du glaubst eine wässrige Flüssigkeit aus einem der Fässer rinnen zu sehen, kurz bevor eine kraftvoll geschwungene Banditenfaust mit voller Wucht dein Nasenbein zertrümmert.[Licht-desc]";

To say Männer-Schaufel-desc:
	say "Du schwingst die Schaufel und triffst einen der heranstürmenden Männer satt an der linken Schläfe, kurz bevor dir ein anderer mit einem gezielten Schuss für immer das Licht ausbläst.[Licht-desc]";

To say Männer-Brecheisen-desc:
	say "Du holst mit dem Brecheisen aus und reißt einem der heranstürmenden Männer die linke Gesichtshälfte auf, kurz bevor dir ein anderer mit einem gezielten Schuss aus einer Schrotflinte das rechte Bein zerfetzt.[Licht-desc]";

To say Schiess-Keil-desc:
	say "Du kneifst das linke Auge zu und zielst sorgfältig über Kimme und Korn auf den Holzkeil, der den Karren an seinem Platz hält. Du atmest zur Hälfte aus und drückst ab.[paragraph break]Der Schuss löst sich perfekt und lässt den getroffenen Holzkeil in hohem Bogen davonschnellen. Durch die entstandene Staubwolke hindurch setzt sich der Karren laut rumpelnd in Bewegung und rollt genau auf euch zu.
	
	Die Männer halten inne und drehen sich um, die Augen vor Angst geweitet.
	
	'Das Nitro! RAUS HIER!'
	
	Du drehst dich zu Michael und Lucy um, die mit starrem Blick an dir vorbeisehen, die Münder weit geöffnet. Du hechtest auf sie und drückst sie zu Boden, kurz bevor die Welt um dich explodiert.";
	weißlicht;
	now Michael is in r-Sheriff;
	now Lucy is in r-Sheriff;
	now the player is in r-Sheriff;
	now the player is eingesperrt;

To say Licht-desc:
	weißlicht;
	say "Nein, so war es nicht gewesen. [one of]Du lässt dir noch einmal alle Handlungsmöglichkeiten durch den Kopf gehen.[or]Du hast es irgendwie anders gemacht, da bist du dir sicher.[or]In Wirklichkeit war dir natürlich eine viel schlauere Lösung eingefallen.[at random][if Diecount is greater than 2][line break]Vielleicht solltest du dich noch einmal genauer umschauen.[end if][line break]Langsam lichtet sich der weiße Nebel vor deinen Augen. Die Männer stürmen immer noch auf euch zu.";
	increase Diecount by 1;
	stop the action.

[Showdown]
Test 14b with "Test 14 / o / hoch / rede mit paar / 1 / 1 / x eingang / x karren / x keil / l / o / l / hoch / l / nimm keil / erschiesse männer / schiesse auf karren / schiesse auf fässer / benutze brecheisen mit mann / benutze schaufel mit thompson / benutze revolver mit keil".

Section 15 - Steppe

r-Steppe is a room. The printed name is "Steppe[f]". 
The description is "[if unvisited][desc-End][else]Im staubigen Dunst der einsetzenden Dämmerung kannst du die Umrisse einer größeren Stadt erahnen.[paragraph break]Erreichen wirst du sie heute aber nicht mehr.[end if]".
Understand "Steppe[f]", "Stadt[f]" as r-Steppe.

Billy is a animal in r-Steppe. The printed name is "Billy".
The description is "Billy peitscht schnell wie der Wind und mittlerweile in vollem Galopp über die Steppe."
Understand "Pferd[n]", "Hengst[m]", "Rappe[m]" as Billy.
Instead of getting off Billy, say "Du hast schon genug Zeit verloren. Claire könnte in Gefahr sein.".

Instead of going in r-Steppe:
	say "Du kannst leider nirgendwo mehr hingehen. Die Geschichte ist hier zu Ende.";

Pending-steppe-look is a truth state that varies.

Before looking in r-Steppe when Pending-steppe-look is true:
	now Pending-steppe-look is false;
	stop the action.

To say desc-End:
	say "Frisch gesattelt sitzt du auf Billy, einem jungen Hengst, deine Umhängetasche fest im Griff. Die langsam untergehende Sonne wirft lange Schatten auf den staubigen Weg vor dir, der nach Osten aus der Stadt führt.

	Du blickst dich noch einmal um und hebst die Hand in Richtung [if Barfrau is proper-named]Ella, [end if]Marten und Bill, die dir auf der Straße stehend nachwinken.

	Den Blick nach vorne gerichtet versetzt du den Rappen in einen leichten Trab. Ein weiter Weg liegt noch vor dir.

	[italic type]Wieso dachtest du, dass ich im Gefängnis sitze, Claire? Wer hat dir das erzählt?[roman type]

	Egal. Du würdest sie finden, und bald würdet ihr wieder zusammen sein, dessen warst du dir sicher... doch das war eine Geschichte, die an einem anderen Tag erzählt werden sollte.^^";
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
	say "Vielen Dank, dass du [italic type][bold type]Staub[roman type] gespielt hast. Ich hoffe, es hat dir gefallen. Wenn ja, würde ich mich sehr über eine Bewertung auf IFDB.org freuen - vielleicht erfährst du dann bald, wie die Geschichte endet. Wenn du online spielst, schreib mir auch gerne etwas direkt hier drunter![paragraph break]Ansonsten nehme ich Anregungen, Lob und Kritik gerne auch in https://bit.ly/Ikes-Discord oder per Mail an staub@ikeserver.de entgegen.[paragraph break][desc-dank]2024 © IkeC";
	now Pending-steppe-look is true.

To say desc-dank:
	say "Vielen Dank an Olaf Nowacki, Hannes Schüller, Michael L. und meine Familie für ihr hilfreiches Feedback sowie den GerX-/deform-Autoren für die deutsche Inform-Erweiterung. Das Cover wurde mit Hilfe von Stable Diffusion XL erstellt.[paragraph break]";

Section 90 - Flashback 1

r-Flashback-1 is a room. The printed name is "[run paragraph on]". [NICHT leer lassen]
The description is "[desc-r-Flashback1][run paragraph on]".

To say desc-r-Flashback1:
	screenbreak-short;
	say "[desc-flashback1]";
	screenbreak;
	now cyoa mode is false;
	cyoa teleport to r-Sheriff;
	now the player is eingesperrt;
	now Revolver is in Tasche;
	if player has Tasche:
		now Tasche is closed;
		now Tasche is on Schreibtisch;
		now Einberufungsbescheid is on Schreibtisch;
	say "[line break]Aua.
	
	Dein Kopf dröhnt schon wieder, nur dass es sich diesmal nicht wie zu viel Whiskey am Vorabend anfühlt.

	'Kleines Schläfchen gehalten, was?'
	
	Du öffnest langsam die Augen und blickst unvermittelt in das wettergegerbte Gesicht des Sheriffs.[run paragraph on]";

To say desc-flashback1:
	say "[italic type]Claire wirbelt herum. 'Zur Armee? Bist du völlig bescheuert?'
	
	Sie ist so schön, wenn sie wütend ist, aber das funkelnde Feuer in ihren Augen macht dir manchmal auch ein bisschen Angst. Als du ihr über die Wange streichen möchtest, dreht sie sich schnell weg.
	
	'Du weißt doch, dass wir das Geld brauchen.'
	
	Du versuchst möglichst fest und bestimmt zu klingen, dabei bist du selbst nicht ganz überzeugt von deiner Entscheidung. Trotzig blickt sie aus dem staubigen Fenster, die Arme vor der Brust verschränkt. Ihr Kinn zittert leicht.[roman type]
	
	Claire...";

Section 91 - Flashback 2

r-Flashback-2 is a room. The printed name is "[run paragraph on]". [NICHT leer lassen]
The description is "[desc-r-Flashback2]".
To say desc-r-Flashback2:
	screenbreak;
	say "[desc-flashback2]";
	screenbreak;
	now r-Hoehle is north of r-Huegelkette;
	now r-Hoehle is inside of r-Huegelkette;
	now r-Huegelkette is south of r-Hoehle;
	now r-Huegelkette is outside of r-Hoehle;
	now Brocken is entfernt;
	now Papagei is in r-Barbier;
	cyoa teleport to r-Huegelkette;
	say "[line break]Du öffnest die Augen.[paragraph break]Offenbar hast du dir (wieder einmal) den Kopf gestoßen, diesmal wohl, als du dich vor dem losrollenden Felsbrocken mit einem Hechtsprung in Sicherheit bringen wollest. Zumindest das scheint funktioniert zu haben.[paragraph break]Langsam rappelst du dich auf und klopfst dir den Staub von den Schultern. Was für ein Scheißtag.[run paragraph on]";
	now Stange is in r-Huegelkette;

To say desc-flashback2:
	say "[italic type]Ihr seid schon ewig nicht mehr hier am Pier gewesen. Sie wollte das Geld wie immer sparen für später, aber heute wolltest du unbedingt mit ihr ans Meer.

	'Mit Hut oder ohne, was denkst du?'

	Claire sitzt auf einem Schemel und hält lachend den wild im Wind flatternden Hut fest. Du hast dem Zeichner zwei Dollar gegeben, hoffentlich wird das ein schönes Bild. Sein Kohlestück huscht hastig und geübt über das Papier.

	Möwen kreisen am Ende des Piers und kreischen laut auf, als ein kleiner Junge versucht sie zu fangen. Sie dreht den Kopf und lächelt dich an. Du ballst die Faust in der Tasche, den Ring dabei fest umklammernd.[roman type]

	Wo bist du, Claire?";

Section 95 - Hilfe

Info is an action applying to nothing.
Understand "info" ,"hilfe" as info.

Info-Shown is a truth state that varies. 
Info-Shown is false.

Carry out info:
	say "Lenke deinen Charakter durch Richtungsangaben wie [bold type]SÜD[roman type] (oder kürzer: S), [bold type]NORDWEST[roman type] (NW), [bold type]RUNTER[roman type] (R), [bold type]RAUS[roman type] etc. sowie folgende Anweisungen:
[line break]
[line break]- [bold type]SCHAU[roman type] (L)
[line break]- [bold type]UNTERSUCHE[roman type] <Sache> (U)
[line break]- [bold type]NIMM[roman type] <Sache> (P)
[line break]- [bold type]REDE MIT[roman type] <Person> (T)
[line break]- [bold type]BENUTZE[roman type] <Sache> [bold type]MIT[roman type] <Sache> (B)
[line break]- [bold type]LEGE[roman type] / [bold type]DRÜCKE[roman type] / [bold type]ÖFFNE[roman type] <Sache>
[line break]
[line break]Andere Anweisungen sind ebenfalls möglich. Ein typischer Anfang wäre z.B. [bold type]SCHAU[roman type], [bold type]ÖFFNE FENSTER[roman type], [bold type]UNTERSUCHE NACHTTISCH[roman type], [bold type]NIMM TASCHE[roman type], [bold type]RUNTER[roman type], [bold type]REDE MIT FRAU[roman type] und so weiter.[paragraph break]Mit [bold type]GEH[roman type] werden die bereits besuchten Orte angezeigt. Diese können mit [bold type]GEH[roman type] <Ort> direkt erreicht werden. [bold type]INV[roman type] (I) zeigt dein Inventar, also was du bei dir trägst. [bold type]SPEICHERN[roman type] und [bold type]LADEN[roman type] ist ebenfalls möglich. Mit [bold type]TIPP[roman type] bekommst Du einen Hinweis, wie es weiter geht.
[line break]
[line break]Aktionen wie das Betreten neuer Räume oder der Fund von Gegenständen schalten oft neue Dialogoptionen frei, es ist daher sinnvoll, mehrmals mit Personen zu sprechen. Unter https://ikeserver.de/Staub gibt es weitere Hinweise und eine Komplettlösung, wenn[']s mal nicht weiter geht.";
	if Info-Shown is false:
		now Info-Shown is true;
		say "[line break]";
		say "[desc-dank]";

Tipp is an action applying to nothing.
Understand "tip" ,"tipp", "hinweis" as Tipp.
Hinweiscounter is a number that varies. Hinweiscounter is 0.

Carry out Tipp:
	Increase Hinweiscounter by 1;
	if Lucy is in r-Sheriff:
		say "Ab hier solltest du alleine klar kommen.";
	else if r-Saloon is unvisited:
		say "Gehe raus.";
	else if player does not have Tasche:
		say "Nimm deine Tasche mit.";
	else if r-Hauptstraße is unvisited:
		say "Sieh dich draußen genauer um.";
	else if r-Ranch is unvisited:
		say "Erkunde die Gegend genauer.";
	else if r-Mine is unvisited:
		say "Finde die Mine.";
	else if Taschentuch is in r-Mine:
		say "Schau dich bei der Mine genauer um.";
	else if r-Barbier is unvisited:
		say "Besuche den Barbier.";
	else if r-Huegelkette is unvisited:
		say "Finde einen anderen Weg in die Mine.";
	else if Brocken is not entdeckt:
		say "Du brauchst Molly, um den Mineneingang zu finden.";
	else if r-Laden is unvisited:
		say "Besuche den Gemischtwarenladen.";
	else if r-Friedhof is unvisited:
		say "Sieh dich auf dem Friedhof um.";
	else if Bills-Frau is not proper-named:
		say "Sprich mit Bill.";
	else if Zwicker is not found:
		say "Finde Bills Zwicker.";
	else if Spalt is not bearbeitet:
		say "Versuche, den Spalt beim Felsbrocken zu vergrößern.";
	else if player does not have Stange and Brocken is not entfernt:
		say "Besorge dir einen langen, stabilen Hebel.";
	else if Brocken is not entfernt:
		say "Versuche, den Spalt beim Felsbrocken noch weiter zu vergrößern.";
	else if r-Hoehle is unvisited:
		say "Erkunde die Höhle.";
	else if player does not have Lampe:
		say "Besorge dir eine Lampe.";
	else if Lampe is not lit:
		say "Zünde die Lampe an.";
	else if Podest is not entdeckt:
		say "Sprich mit Marten und Bill.";
	else if player does not have Schaufel:
		say "Besorge dir eine Schaufel, um das Podest von Sand zu befreien.";
	else if Podest is not geöffnet:
		say "Öffne das Podest unter dem Galgen.";
	else if r-Gewoelbe is unvisited:
		say "Seile dich aus der Höhle ab.";
	else if Geselle is not geduckt and Geselle is not bewusstlos:
		say "Lenke die Wache mit einem geeigneten Gegenstand ab.";
	else if Geselle is not bewusstlos:
		say "Schalte die Wache aus.";
	else if Lucy is not entdeckt:
		say "Sprich mit Lucy und Michael.";
	else if Lucy is not in r-Sheriff:
		say "Es ist Zeit, die Waffen sprechen zu lassen.";

Credits is an action applying to nothing.
Understand "credits" as Credits.

Carry out Credits:
	say "[desc-dank]";

Section 99 - Backstage

r-Backstage is a room.

A Taschentuch is a thing in r-Backstage. The printed name is "Taschentuch[n]".
The description is "Ein etwas zerknittertes, weißes Taschentuch aus feinem Stoff. An einer Ecke wurden sorgfältig die Initialen LT eingestickt."
The Geruch of Taschentuch is "Es riecht nach Lavendel und bitteren Tränen."
Understand "Tuch" as Taschentuch.
Taschentuch is not ablegbar.

Bills-Frau is a person. Bills-Frau is not proper-named.
Bills-Frau can be found. Bills-Frau is not found.

A Zwicker is a thing in r-Backstage. The printed name is "Zwicker[m]".
Zwicker can be found. Zwicker is not found.
The description is "Ein einfacher Zwicker mit dicken, leicht milchigen Gläsern.".
Understand "Brille[f]" as Zwicker.

A Brecheisen is a thing in r-Backstage. The printed name is "Brecheisen[n]".
The description is "Ein Brecheisen aus Stahl, etwa einen halben Meter lang. Beide Seiten sind geschlitzt und eine Seite ist gebogen.".
Understand "Kuhfuß[m]", "Kuhfuss[m]", "Brechstange[f]", "Stemmeisen[n]", "Eisen[n]" as Brecheisen.
Brecheisen is sperrig.

A Schaufel is a thing in r-Backstage. The printed name is "Schaufel[f]".
The description is "Eine robust wirkende Schaufel mit Holzgriff.".
Schaufel is sperrig.

A Streichhölzer is a thing in r-Backstage. The printed name is "Streichhölzer[p]".
The description is "Eine stattliche Anzahl an Streichhölzern, in braunes Packpapier eingeschlagen.".
Understand "Streichholz[n]", "Zuendholz[n]", "Zuendhoelzer[p]", "Schwefelholz[n]", "Schwefelhoelzer[p]", "Papiertuetchen[n]", "Tuetchen[n]", "Tuete[f]" as Streichhölzer.
Streichhölzer is wertvoll.

A Seil is a thing in r-Backstage. The printed name is "Seil[n]".
The description is "Ein langes, dickes Seil, mindestens zehn Meter lang.".
Understand "Seil[n]", "Tau[n]" as Seil.
Instead of taking Seil:
	if Seil is angebunden:
		say "Das bleibt alles so, wie es ist.";
	else if Lampe is not lit and player is in r-Galgen:
		try taking Schlinge instead;
	else:
		say "Du wirfst dir das aufgerollte Seil über die Schulter. Ganz schön schwer.";
		now player has Seil;
		stop the action.
Seil can be angebunden. Seil is not angebunden.
Seil is sperrig.
For clarifying the parser's choice of the Seil: do nothing.

Podestkram is a thing in r-Backstage. The printed name is "Bretter[p]".
The description is "Du siehst nichts Besonderes daran.".
Understand "Bretter", "Naegel" as Podestkram.
Instead of taking Podestkram:
	say "Du siehst keinen Grund das mitzunehmen.".

Kleidung is a thing in r-Backstage. Kleidung is wertvoll. Kleidung is wearable. Kleidung is sperrig.

The printed name is "Kleidung[f]".
Understand "Hemd[n]","Leinenhemd[n]","Weste[f]","Lederweste[f]","Beine[p]","Hose[f]","Hosen[p]","Wollhose[f]","Wollhosen[p]","Ledereinlage[f]","Stiefel[p]","Lederstiefel[p]","Halstuch[n]","Hut[m]","Cowboyhut[m]" as Kleidung.

Instead of examining Kleidung:
	say "Du trägst ein leicht zerschlissenes Leinenhemd, darüber eine Lederweste. Deine Beine stecken in groben Wollhosen mit Ledereinlage am Hintern. Staubige Lederstiefel von undefinierbarer Farbe, ein dunkelbraunes Halstuch und ein einfacher Cowboyhut aus Filz runden das wenig beeindruckende, aber zweckmäßige Ensemble ab."

Instead of undressing, try undressing Kleidung.
Instead of doing anything with Kleidung:
	say "Du hast nicht vor irgendetwas an- oder auszuziehen oder dich in irgendeiner Form mit deiner Kleidung zu beschäftigen."