Version 1 of Ext by IkeC begins here.

ForWeb is a truth state that varies. ForWeb is false.

Understand "trink aus [something]" as drinking.
Understand "p [things]" as taking.

Understand "t" as vaguely communicating.
Understand "t [dativ] [someone alive]" as telling it about. [*]
Understand "t [dativ] [something]" as telling it about. [*]

Understand "loesch [something]", "pust [something]", "pust [something] aus", "deaktivier [something]" as switching off.

Misbehaving is an action applying to nothing.
Understand "piss", "fick", "wichs", "kack", "scheiss", "kotz" as Misbehaving.
Instead of Misbehaving:
	say "[desc-Misbehaving]".

Misbehaving with is an action applying to one thing.
Understand "piss [something]", "fick [something]", "wichs [something]" as Misbehaving with.
Instead of Misbehaving with:
	say "[desc-Misbehaving]".

To say desc-Misbehaving:
	say "[one of]Also bitte[or]Das muss jetzt nicht sein[or]Bitte benehmen Sie sich[or]Dies ist weder die Zeit noch der Ort[at random].".

Farting is an action applying to nothing.
Understand "furz", "furzen" as farting.
Instead of farting:
    say "[one of]Du lässt ordentlich einen krachen[or]Aaah[at random].".

Spitting is an action applying to nothing.
Understand "spuck" as spitting.
Instead of spitting:
    say "[one of]Du spuckst beiläufig auf den Boden[or]Bäh[at random].".

Graben is an action applying to nothing.
Understand "buddle", "buddel", "grab" as graben.
Instead of graben:
	if player is not in r-Galgen:
		say "Du musst hier nicht graben.";
	else:
		say "Grundsätzlich keine schlechte Idee. Bitte gib an, was du mit welchem Werkzeug graben willst.".

Ausgraben is an action applying to one visible thing.
Understand "grab [something]", "grabe [something]", "grab in [something]", "grabe in [something]", "grab mit [something]", "grabe mit [something]" as ausgraben.
Instead of ausgraben:
	if player is not in r-Galgen:
		say "Du musst hier nicht graben.";
	else:
		say "Bitte gib an, was du mit welchem Werkzeug graben möchtest.".

Graben it with is an action applying to two visible things.
Understand "grab [something] mit [something]", "grabe [something] mit [something]" as Graben it with.

To say desc-press-key:
	say "(Drücke eine beliebige Taste)".

To screenbreak:
	if Debug is false and ForWeb is false:
		say "[line break][desc-press-key]";
		wait for any key;
		clear the screen;
	else:
		say "[line break][bold type]~~~[roman type][paragraph break]";

To screenbreak-short:
	if Debug is false and ForWeb is false:
		say "[desc-press-key]";
		wait for any key;
		clear the screen;
	else:
		say "[bold type]~~~[roman type][paragraph break]";

To weißlicht:
	if Debug is false and ForWeb is false:
		say "[line break][italic type]--- WEISSES LICHT ---[roman type][line break]";
		say "[line break][desc-press-key]";
		wait for any key;
		clear the screen;
	else:
		say "[line break][italic type]--- WEISSES LICHT ---[roman type][paragraph break]";

Unwichtig is a kind of thing. Unwichtig is fixed in place.
Instead of examining Unwichtig:
	say "[one of]Du siehst nichts Besonderes an [dem noun][or][Der noun] [ist] nicht weiter wichtig[or]Du misst [dem noun] keine größere Bedeutung bei[or]Nichts an [dem noun] weckt dein Interesse[at random].";

Verschwunden is a kind of thing. Verschwunden is fixed in place.
Instead of doing anything with Verschwunden:
	say "[one of][Der noun] [ist] nicht mehr hier.[or][Der noun] [ist] nicht mehr zu sehen.[at random]";

A thing can be wertvoll. A thing is usually not wertvoll.
A thing can be ablegbar. A thing is usually not ablegbar.
A thing can be entdeckt. A thing is usually entdeckt.
A thing can be entfernt. A thing is usually not entfernt.
A thing can be sperrig. A thing is usually not sperrig.

A person can be eingesperrt. A person is usually not eingesperrt.
A person can be bewusstlos. A person is usually not bewusstlos.
A person can be geduckt. A person is usually not geduckt.

A animal can be zutraulich. A animal is usually not zutraulich.
A animal can be nehmbar. A animal is usually not nehmbar.

Instead of giving or dropping something wertvoll: say "[Den noun] gibst du nicht aus der Hand.".
Instead of giving or dropping something not ablegbar: say "[Den noun] behältst du lieber.".

[https://www.ifwiki.org/Smell_restrictions_(Inform_7_example)]
[First we'll create the property for all things and rooms.]
A thing has a text called Geruch.
A room has a text called Geruch.

A room has a number called Visitcounter. The Visitcounter of a room is usually 0.
[Before going to a room: Increase the Visitcounter of the location by 1.]

[We need to remove the default blocking rule.] 
The report smelling rule is not listed in the report smelling rulebook. 

[Now we'll add a default carry out rule.]
The last carry out smelling rule:
	if the noun is empty and the Geruch of the location is not empty:
		say "[the Geruch of the location][line break]";
	else if the Geruch of the noun is not empty:
		say "[the Geruch of the noun][line break]";
	else:
		say "Du riechst nichts Besonderes.".

To say desc-Verwenden:
	say "Bitte nenne die Dinge die du verwenden oder miteinander verbinden möchtest.".

Nur-Using is an action applying to nothing.
Understand "b", "benutz", "benutze", "bind", "binde", "knot", "knote", "befestig", "befestige" as Nur-using.
Instead of Nur-using, say "[desc-Verwenden]".  

Using is an action applying to one visible thing.
Understand "b [something]" as using.
Understand "nutz [something]" as using.
Understand "nutze [something]" as using.
Understand "benutz [something]" as using.
Understand "benutze [something]" as using.
Understand "steck [something]" as using.
Understand "stecke [something]" as using.
Understand "bind [something]" as using.
Understand "binde [something]" as using.
Understand "knot [something]" as using.
Understand "knote [something]" as using.
Understand "befestig [something]" as using.
Understand "befestige [something]" as using.
Understand "kombinier [something]" as using.
Understand "kombiniere [something]" as using.
Understand "verstell [something]" as using.
Understand "verstelle [something]" as using.
Understand "stell [something]" as using.

Understand "heb [something]" as pulling.
Understand "stell [something] auf" as pulling.


Instead of using, say "[desc-Verwenden]".

Using it on is an action applying to two visible things.
Understand "b [something] mit/in/an [something]" as using it on.
Understand "nutz [something] mit/in/an/gegen/auf [something]" as using it on.
Understand "nutze [something] mit/in/an/gegen/auf [something]" as using it on.
Understand "benutz [something] mit/in/an/gegen/auf [something]" as using it on.
Understand "benutze [something] mit/in/an/gegen/auf [something]" as using it on.
Understand "erschlag [something] mit/in/an/gegen/auf [something]" as using it on.
Understand "erschlage [something] mit/in/an/gegen/auf [something]" as using it on.
Understand "steck [something] mit/in/an [something]" as using it on.
Understand "stecke [something] mit/in/an [something]" as using it on.
Understand "bind [something] mit/in/an [something]" as using it on.
Understand "binde [something] mit/in/an [something]" as using it on.
Understand "knot [something] mit/in/an [something]" as using it on.
Understand "knote [something] mit/in/an [something]" as using it on.
Understand "befestig [something] mit/in/an [something]" as using it on.
Understand "befestige [something] mit/in/an [something]" as using it on.
Understand "kombinier [something] mit/in/an [something]" as using it on.
Understand "kombiniere [something] mit/in/an [something]" as using it on.
Understand "stell [something] an/zu/unter [something]" as using it on.

Instead of asking a person about:
	say "Rede einfach mit [dem noun]. Wenn du glaubst, etwas Bestimmtes zu brauchen oder erzählen zu wollen, wirst du auch darüber sprechen können.".

Instead of giving something to a person:
	say "Rede einfach mit [dem second noun]. Wenn du glaubst, jemandem etwas geben zu können, wirst du darüber sprechen können.".

Instead of showing something to a person:
	say "Rede einfach mit [dem second noun]. Wenn du glaubst, jemandem etwas zeigen zu können, wirst du darüber sprechen können.".

After reading a command when the character number 1 in player's command is "#", stop the action.
After reading a command when the player's command in lower case matches the text "claire":
 say "[one of]Claire ist nicht hier.[or]Sie fehlt dir so.[or]Du würdest alles dafür geben, sie jetzt zu sehen.[or]Hoffentlich geht es ihr gut.[at random]";
 stop the action.


To say desc-Nichts-Passiert:
	say "[one of]Nichts passiert.[or]Das bringt gar nichts.[at random]".

To say desc-Nicht-Dein-Stil:
	say "[one of]Das ist nicht dein Stil.[or]Nein, das ist nicht so dein Ding.[at random]".

Sinnlos-Aktion is an action applying to nothing.
Understand "klopf", "schleich" as Sinnlos-Aktion.
Instead of Sinnlos-Aktion:
	say "[desc-Nicht-Dein-Stil]".

Sinnlos-Aktion-With is an action applying to one thing.
Understand "klopf an/gegen/auf/in [something]", "schleich zu/in/an [something]", "lenk [someone] ab", "lenke [someone] ab", "wink mit [something]" as Sinnlos-Aktion-With.
Instead of Sinnlos-Aktion-With:
	say "[desc-Nicht-Dein-Stil]".

Keine-Lust-Aktion is an action applying to nothing.
Understand "folg", "zaehl", "leck", "tanz" as Keine-Lust-Aktion.
Instead of Keine-Lust-Aktion:
	say "[desc-Keine-Lust]".

Keine-Lust-Aktion-With is an action applying to one thing.
Understand "folg [something]", "zaehl [something]", "leck [something]" as Keine-Lust-Aktion-With.
Instead of Keine-Lust-Aktion-With:
	say "[desc-Keine-Lust]".

To say desc-Keine-Lust:
	say "[one of]Dafür ist jetzt keine Zeit.[or]Danach steht dir jetzt nicht der Sinn.[at random]".

Going-to is an action applying to one thing.
Understand "geh zu/zur/an [something]" as going-to.
Understand "geh [something]" as going-to.
Understand "geh [something] runter" as going-to.
Instead of going-to:
	say "Bitte gib INFO ein für eine Erklärung, wie man sich in diesem Spiel bewegt. Innerhalb des aktuell beschrieben Raumes oder Orts musst du nicht herumlaufen.";

Instead of attacking something with bodypart: 
	say "[one of]Nein, das könnte wehtun.[or]Ich möchte mich nicht verletzen.[or]Das ist nicht mein Stil.[at random]".

To say desc-funktioniert-nicht:
	say "[one of]Das geht so leider nicht.[or]Ich habe keine Ahnung wie das gehen soll.[or]Das ergibt für mich überhaupt keinen Sinn.[or]Das ist bestimmt eine gute Idee, aber ich verstehe leider nicht wie das gehen soll.[or]Das verstehe ich leider nicht.[or]Das funktioniert so leider nicht.[at random]".

Bodypart is part of the player. The printed name is "Körperteil[n]". Understand "Hand[f]", "Haende[p]", "Schulter[f]", "Schultern[p]", "Faust[f]", "Faeuste[p]", "Fuss[m]", "Fuesse[p]", "Kopf[m]", "Penis[m]", "Schwanz[m]", "Stirn[f]" as bodypart.
Instead of doing anything except examining with bodypart:
	say "Du musst und willst keines deiner Körperteile gezielt einsetzen.";
	stop the action;
Instead of examining bodypart:
	say "Du siehst nichts Besonderes daran.";

Instead of rubbing something with something, try using the second noun on the noun.

Understand "beweg [something]", "bewege [something]" as pushing.

Removing it with is an action applying to two visible things.
Understand "entfern [something] mit [something]", "entferne [something] mit [something]", "beweg [something] mit [something]", "bewege [something] mit [something]" as removing it with.
Instead of removing something with something, try using the second noun on the noun.

Counting is an action applying to one visible thing.
Understand "count [something]" as Counting.
Instead of Counting something, try examining the noun.

Instead of throwing something at someone, try dropping the noun.

Instead of searching something, try examining the noun.

Understand "xyzzy" as casting xyzzy. Casting xyzzy is an action applying to nothing.
Instead of casting xyzzy, say "Gesundheit.".

Removing is an action applying to one visible thing.
Understand "entfern [something]", "entferne [something]" as Removing.
Instead of Removing something, try pulling the noun.

To say desc-OOB:
	say "Es gibt [one of]nichts für dich dort draußen zu sehen[or]nur vertrocknetes Steppengras dort draußen[or]nichts außer Staub und Sand in dieser Richtung[at random], und du solltest dich auch nicht noch weiter aus der Stadt entfernen.";


Ext ends here.




















