Version 1 of Ext by IkeC begins here.

ForWeb is a truth state that varies. ForWeb is false.

Understand "drink from [something]" as drinking.
Understand "p [things]" as taking.

Vaguely communicating is an action applying to nothing.
Check vaguely communicating (this is the block vaguely communicating rule):
	say "Please also indicate who you would like to talk to.".
Understand "t", "talk", "talk to" as vaguely communicating.
Understand "t [someone]", "talk [someone]", "talk to [someone]" as telling it about. [*]
Understand "t [something]", "talk [something]", "talk to [something]" as telling it about. [*]

Understand "turn off [something]", "blow out [something]", "deactivate [something]" as switching off.

Misbehaving is an action applying to nothing.
Understand "piss", "fuck", "wank", "masturbate", "shit", "puke", "pee", "urinate" as Misbehaving.
Instead of Misbehaving:
	say "[desc-Misbehaving]".

Misbehaving with is an action applying to one thing.
Understand "piss [something]", "fuck [something]", "wank [something]", "masturbate [something]" as Misbehaving with.
Instead of Misbehaving with:
	say "[desc-Misbehaving]".

To say desc-Misbehaving:
    say "[one of]This is neither the time nor the place.[or]Oh come on.[or]
    That's neither the time nor the place.[or]Please behave.[at random]".

Farting is an action applying to nothing.
Understand "fart" as farting.
Instead of farting:
    say "[one of]You really let one rip.[or]Aaah.[at random]".

Spitting is an action applying to nothing.
Understand "spit" as spitting.
Instead of spitting:
    say "[one of]You casually spit on the floor.[or]Eww.[at random]".

Graben is an action applying to nothing.
Understand "dig", "shovel" as graben.
Instead of graben:
	if player is not in r-Galgen:
		say "You don't have to dig here.";
	else:
		say "Not a bad idea, generally speaking. Please specify what you want to dig with which tool.".

Ausgraben is an action applying to one visible thing.
Understand "dig [something]", "shovel [something]", "dig in [something]", "dig with [something]" as ausgraben.
Instead of ausgraben:
	if player is not in r-Galgen:
		say "You don't have to dig here.";
	else:
		say "Please indicate what you want to dig with which tool.".

Graben it with is an action applying to two visible things.
Understand "dig [something] with [something]", "shovel [something] with [something]", "dig [something] using [something]" as Graben it with.

To say desc-press-key:
	say "(Press any key)".

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
		say "[line break][italic type]--- WHITE LIGHT ---[roman type][line break]";
		say "[line break][desc-press-key]";
		wait for any key;
		clear the screen;
	else:
		say "[line break][italic type]--- WHITE LIGHT ---[roman type][paragraph break]";


Unwichtig is a kind of thing. Unwichtig is fixed in place.
Instead of examining Unwichtig:
	say "[one of]You don't see anything special about [the noun][or][The noun] [are] not important[or]You don't attach any great importance to [the noun][or]Nothing about [the noun] catches your interest[at random].";

Verschwunden is a kind of thing. Verschwunden is fixed in place.
Instead of doing anything with Verschwunden:
	say "[one of][The noun] [are] not here anymore.[or][The noun] [are] nowhere to be seen.[at random]";

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

Instead of giving or dropping something wertvoll: say "You don't give [the noun] out of your hands.".
Instead of giving or dropping something not ablegbar: say "You'd rather keep [the noun].".

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
		say "You don't smell anything special.".

To say desc-Verwenden:
	say "Please specify the two things you want to use together.".

Nur-Using is an action applying to nothing.
Understand "use", "combine", "tie", "attach" as Nur-using.
Instead of Nur-Using, say "[desc-Verwenden]".

Using is an action applying to one visible thing.
Understand "use [something]" as using.
Understand "combine [something]" as using.
Understand "tie [something]" as using.
Understand "attach [something]" as using.
Understand "put [something]" as using.
Understand "pry [something]" as using.
Instead of using, say "[desc-Verwenden]".

Using it on is an action applying to two visible things.
Understand "use [something] with/in/on/to [something]" as using it on.
Understand "combine [something] with/in/on/to [something]" as using it on.
Understand "tie [something] with/in/on/to/around [something]" as using it on.
Understand "attach [something] with/in/on/to [something]" as using it on.
Understand "put [something] below/under/to [something]" as using it on.
Understand "move [something] below/under/to/with [something]" as using it on.

Instead of asking a person for:
	say "Just talk to [the noun]. If you think you need or want to say something specific, you will be able to talk about it.".

Instead of asking a person about:
	say "Just talk to [the noun]. If you think you need or want to say something specific, you will be able to talk about it.".

Instead of giving something to a person:
	say "Just talk to [the second noun]. If you think you can give someone something, you will be able to talk about it.".

Instead of showing something to a person:
	say "Just talk to [the second noun]. If you think you can show someone something, you will be able to talk about it.".

After reading a command when the character number 1 in player's command is "#", stop the action.
After reading a command when the player's command in lower case matches the text "claire":
 say "[one of]Claire is not here.[or]You miss her so much.[or]You would give anything to see her right now.[or]You hope she is doing well.[at random]";
 stop the action.

To say desc-Nichts-Passiert:
	say "[one of]Nothing happens.[or]That doesn't do anything.[at random]".

To say desc-Nicht-Dein-Stil:
	say "[one of]That's not how you roll.[or]No, that's not your thing.[at random]".

Sinnlos-Aktion is an action applying to nothing.
Understand "knock", "sneak", "wave", "dance", "jump", "kick" as Sinnlos-Aktion.
Instead of Sinnlos-Aktion:
	say "[desc-Nicht-Dein-Stil]".

Sinnlos-Aktion-With is an action applying to one thing.
Understand "knock on/at/in [something]", "sneak in/to/past [something]", "wave [something]", "wave to/with [something]", "kick [something]" as Sinnlos-Aktion-With.
Instead of Sinnlos-Aktion-With:
	say "[desc-Nicht-Dein-Stil]".

Keine-Lust-Aktion is an action applying to nothing.
Understand "follow", "count", "lick", "dance", "sing", "whistle" as Keine-Lust-Aktion.
Instead of Keine-Lust-Aktion:
	say "[desc-Keine-Lust]".

Keine-Lust-Aktion-With is an action applying to one thing.
Understand "follow [something]", "lick [something]" as Keine-Lust-Aktion-With.
Instead of Keine-Lust-Aktion-With:
	say "[desc-Keine-Lust]".

To say desc-Keine-Lust:
	say "[one of]No time for that now.[or]You're not in the mood right now.[at random]".

The block attacking rule response (A) is "Violence [aren't] the answer to this one - at least not like this.".

[https://intfiction.org/t/really-need-help-getting-hitting-to-work-in-inform-7/13512/3]
Understand the commands "attack" and "punch" and "destroy" and "kill" and "murder" and "hit" and "thump" and "break" and "smash" and "torture" and "wreck" as something new. 

Attacking it with is an action applying to two things. Understand "attack [something] with/using [something]" as attacking it with.

Understand the commands "punch" and "destroy" and "kill" and "murder" and "hit" and "thump" and "break" and "smash" and "torture" and "wreck" as "attack".

Instead of attacking something with bodypart: 
	say "[one of]Nah, that would probably hurt.[or]I don't want to hurt myself.[or]That's not my style.[at random]".

To say desc-funktioniert-nicht:
	say "[one of]Unfortunately, this is not possible.[or]I have no idea how that's supposed to work.[or]That doesn't make any sense to me at all.[or]That's certainly a good idea, but I don't understand how it's supposed to work.[or]I'm sorry, but I don't understand how to do that.[or]That's not going to work.[or]Sorry, I can't do that.[or]I'm afraid I can't do that.[at random]".

A bodypart is part of the player. The printed name is "body part". 
Understand "hand", "hands", "shoulder", "shoulders", "fist", "fists", "foot", "feet", "head", "penis", "cock", "schlong", "forehead" as bodypart.

Instead of doing anything except examining with bodypart:
	say "You don't have to and you don't want to use any of your body parts specifically.";
Instead of examining bodypart:
	say "You don't see anything special about it.";

Rubbing it with is an action applying to two visible things.
Understand "rub [something] with/using [something]" as rubbing it with.
Instead of rubbing something with something, try using the second noun on the noun.

Prying it with is an action applying to two visible things.
Understand "pry [something] with/using [something]" as prying it with.
Instead of prying something with something, try using the second noun on the noun.

Counting is an action applying to one visible thing.
Understand "count [something]" as Counting.
Instead of Counting something, try examining the noun.

Sliding is an action applying to one visible thing.
Understand "slide [something]" as Sliding.
Instead of Sliding something, try pushing the noun.

The parser nothing error internal rule response (B) is "You[']ll have to be a little more specific about that.".
	[was "[There] [adapt the verb are from the third person plural] none at all available!"]

Instead of throwing something at someone, try dropping the noun.

Instead of searching something, try examining the noun.

Understand "xyzzy" or "say xyzzy" or "cast xyzzy" as casting xyzzy. Casting xyzzy is an action applying to nothing.
Instead of casting xyzzy, say "[one of]Bless you.[or]Gesundheit.[at random]".

Petting is an action applying to one visible thing.
Understand "pet [someone]" as Petting.
Instead of Petting someone, try pushing the noun.

Understand the command "remove" as something new.
Removing is an action applying to one visible thing.
Understand "remove [something]" as Removing.
Instead of Removing something, try pulling the noun.

Understand the command "untie" as something new.
Untieing is an action applying to one visible thing.
Understand "untie [something]" as Untieing.
Understand "unknot [something]" as Untieing.
Instead of Untieing something, try taking the noun.

Removing it with is an action applying to two visible things.
Understand "remove [something] with/using [something]" as removing it with.
Instead of removing something with something, try using the second noun on the noun.

To say desc-OOB:
	say "There's nothing [one of]for you to see out there[or]but dry steppe out there[or]but dust and sand in that direction[at random], and you're not supposed to leave town any further.";

climbing-it is an action applying to one visible thing.
Understand "climb on/onto [something]" as climbing-it.
Instead of climbing-it, try climbing the noun.

Ext ends here.








