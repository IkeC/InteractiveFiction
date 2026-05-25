
Verb 'info' * -> Info;
Verb 'help' = 'info';
Verb 'hint' 'hints' * -> Hint;
Verb 'light' * noun -> SwitchOn;
Verb 'credits' * -> Credits;

[InfoSub;
	print "The game is completely solvable by giving directions such as SOUTH (short: S), NORTHWEST (NW), DOWN (D), OUT etc. as well as the following instructions:^
^- LOOK (L)
^- EXAMINE <Object> (X)
^- PICK UP <Object> (P)
^- TALK TO <Person> (T)
^- USE <Object> WITH <Object>
^- DROP / PUSH / OPEN <Object>
^
^Other commands are also understood, but not required to complete the game. You might start playing like this: LOOK, OPEN WINDOW, X NIGHTSTAND, GET BAG, DOWN, TALK TO WOMAN and so on.
^
^RUN displays the locations already visited. These can be reached directly with RUN <Location>. INV (I) shows your inventory. SAVE and LOAD commands are available as well. Type HINT for advice if you don't know what to do next.
^
^Actions such as entering new rooms or finding items often unlock new dialog options, so it makes sense to talk to people several times.^";
];
 
[CreditsSub;
	print "Many thanks to Olaf Nowacki, Hannes Schueller, Michael L., Fredrik Ramsberg and my family for testing and helpful advice. This game was translated from the original German version Staub with kind help from mathbrush and DeepL. The cover image was created using Stable Diffusion XL.^";
];

[HintSub;
	if (Lucy in r_Sheriff)
		"You should be able to manage on your own from now on.";
	if (r_Saloon hasnt visited)
		"Leave the room.";
	if (Bag notin player)
		"Take your bag with you.";
	if (r_Mainstreet hasnt visited)
		"Go outside and explore the area.";
	if (r_Ranch hasnt visited)
		"Explore the area in more detail.";
	if (r_Mine hasnt visited)
		"Find the mine.";
	if (Hankie in r_Mine)
		"Take a closer look around the mine.";
	if (r_Barber hasnt visited)
		"Visit the barber.";
	if (r_Hillchain hasnt visited)
		"Find another way into the mine.";
	if (FlagIsClear(F_BOULDER_DISCOVERED))
		"You need Molly to find the mine entrance.";
	if (r_Store hasnt visited)
		"Visit the general store.";
	if (r_Cemetery hasnt visited)
		"Visit the cemetery.";
	if (FlagIsClear(F_BILLS_WIFE_NAMED))
		"Talk to Bill.";
	if (FlagIsClear(F_PINCENEZ_FOUND))
		"Find Bill's pince-nez.";
	if (FlagIsClear(F_CREVICE_WIDENED))
		"Try to widen the crevice at the boulder.";
	if (Rod notin player && FlagIsClear(F_BOULDER_REMOVED))
		"Find something long and sturdy to use as a lever.";
	if (FlagIsClear(F_BOULDER_REMOVED))
		"Try to widen the crevice at the boulder even further.";
	if (r_Cave hasnt visited)
		"Explore the cave.";
	if (Lamp notin player)
		"Get yourself a lamp.";
	if (Lamp hasnt on)
		"Light the lamp.";
	if (FlagIsClear(F_PLATFORM_KNOWN))
		"Talk to Marten and Bill.";
	if (Shovel notin player && FlagIsClear(F_PLATFORM_DUG))
		"Get a shovel to remove the sand from the platform.";
	if (FlagIsClear(F_PLATFORM_OPEN))
		"Open the platform under the gallows.";
	if (r_Vault hasnt visited)
		"Rappel down the cave.";
	if (FlagIsClear(F_GUARD_CROUCHING) && FlagIsClear(F_GUARD_OUT))
		"Distract the guard with a suitable object.";
	if (FlagIsClear(F_GUARD_OUT))
		"Knock the guard out.";
	if (FlagIsClear(F_LUCY_FREE))
		"Talk to Lucy and Michael.";
	"It's time to use your weapon.";
];
Verb 'p' = 'take';
Verb 't' = 'talk';

Verb 'use' 
	* -> UseOnly
	* noun -> Use
	* noun 'with'/'on'/'to'/'in'/'into' noun -> UseTogether;

Verb 'stick'
	* noun 'in'/'into' noun -> UseTogether;
[UseOnlySub;
	print "What do you want to use?^";
];
[UseSub;
	print "I don't know how to use ", (the) noun, ".^";
];
[UseTogetherSub;
	! Context-sensitive use X on/with Y
	! Crowbar on crevice/boulder
	if (noun == Crowbar && (second == Crevice || second == Boulder)) {
		if (Crowbar notin player) "You don't have a crowbar.";
		if (second == Boulder) <<UseTogether Crowbar Crevice>>;
		if (FlagIsClear(F_CREVICE_WIDENED)) {
			SetFlag(F_CREVICE_WIDENED);
			ActivateTopic(Bill, 312);
			"You push the flat, straight end of the crowbar into the gap and hammer on the curved end with a flat stone.^^You knock and pry for a while until a flat, hand-width piece of rock finally breaks off the boulder. The gap is now much wider.^^You put the crowbar back in.";
		}
		"You have already widened the gap. Unfortunately, the crowbar is too short to use as a lever.";
	}
	! Rod on crevice/boulder
	if (noun == Rod && (second == Crevice || second == Boulder)) {
		if (Rod notin player) "You don't have a rod.";
		if (second == Boulder) <<UseTogether Rod Crevice>>;
		if (FlagIsSet(F_CREVICE_WIDENED)) {
			doFlashback2();
			rtrue;
		}
		"You pry, push and curse, but unfortunately the gap is not wide enough to push the rod in. You probably won't get any further here without a suitable tool.";
	}
	! Crowbar on iron plate / platform (open gallows hatch)
	if (noun == Crowbar && (second == IronPlate || second == Platform)) {
		if (Crowbar notin player) "You don't have a crowbar.";
		if (player notin r_Gallows) "There is nothing here to pry.";
		if (FlagIsClear(F_PLATFORM_DUG)) "You can't see any plate to pry. The platform is buried in sand.";
		if (FlagIsSet(F_PLATFORM_OPEN)) "The hatch is already open.";
		SetFlag(F_PLATFORM_OPEN);
		give IronPlate ~concealed;
		give HatchRope ~concealed;
		move HatchDebris to r_Gallows;
		give HatchDebris ~concealed;
		"You pry one nail after another out of the platform, not without regularly swearing and asking yourself out loud what the hell you're doing here.^^About half an hour and a broken fingernail later, you have successfully removed all the nails. Drenched in sweat, you push the wooden panel aside to reveal a square, dark opening.";
	}
	! Crowbar on lamp
	if (noun == Crowbar && second == Lamp) {
		if (Lamp in player) "You already have the lamp.";
		if (Lamp has static) {
			ActivateTopic(Ella, 304);
			print_ret (The) Ella, " raises an eyebrow. ~What do you think you're doing there?~";
		}
		move Lamp to player;
		ActivateTopic(Ella, 305);
		ActivateTopic(Bill, 314);
		InactivateTopic(Bill, 312);
		InactivateTopic(Bill, 313);
		"You fumble the lamp off the nail with the crowbar.";
	}
	! Matches on lamp (light it)
	if ((noun == Matches && second == Lamp) || (noun == Lamp && second == Matches)) {
		if (Matches notin player) "You don't have any matches.";
		if (Lamp notin player) "You need to be holding the lamp.";
		<<SwitchOn Lamp>>;
	}
	! Shovel on sand/platform (dig)
	if (noun == Shovel && (second == Sand || second == Platform)) {
		if (Shovel notin player) "You don't have the shovel.";
		if (player notin r_Gallows) "There is nothing obvious to dig here.";
		if (FlagIsSet(F_PLATFORM_DUG)) "You are actually already satisfied with the result.";
		SetFlag(F_PLATFORM_DUG);
		give IronPlate ~concealed;
		"Piece by piece, you free the platform from the large pile of sand, while the wind whips relentlessly in your face.^^Directly under the gallows, a sturdy wooden board becomes visible, which has been carefully nailed to the pedestal with a lot of large nails.";
	}
	! HatchRope on precipice (reject)
	if (noun == HatchRope && second == Precipice)
		"Simply throwing the rope into the abyss will probably not help.";
	! HatchRope on rock (tie rope)
	if (noun == HatchRope && (second == PointedRock || second == Boulder)) {
		if (HatchRope notin player) "You don't have the rope.";
		if (player notin r_Cave) "You can only tie the rope in the cave.";
		if (FlagIsSet(F_ROPE_TIED)) "The rope is already tied to the rock.";
		SetFlag(F_ROPE_TIED);
		give HatchRope scenery;
		move HatchRope to r_Cave;
		"You tie the rope around the rock and secure it with a proper knot.";
	}
	! Revolver on wedge (vault ending shot)
	if (noun == Revolver && second == Wedge) {
		doExplosion();
		rtrue;
	}
	! Revolver on cart during showdown (death)
	if (noun == Revolver && second == Cart && FlagIsSet(F_VAULT_SHOWDOWN)) {
		print "You draw the revolver at lightning speed and shoot at the cart.^^The cart wobbles slightly but does not tip over.^^A rifle butt hits you brutally on the forehead as the men reach and overpower you.^";
		doVaultDeath();
		rtrue;
	}
	! Cookie to parrot
	if (noun == Cookie && second == Molly)
		<<Give Cookie Molly>>;
	print "I don't know how to use these things together.^";
];

Verb 'buy' 'purchase'
	* noun -> Buy
	* -> Buy;
[BuySub;
	print "You can't buy that here.^";
];

Verb 'shoot'
	* noun -> Shoot
	* -> Shoot;
[ShootSub;
	print "No random shooting around please.^";
];

Extend 'look' last
	* 'under'/'beneath'/'underneath' noun -> Search;

Verb 'run'
	* 'to' topic -> RunTo
	* topic -> RunTo
	* -> RunOnly;

[PrintKnownRunLocations;
	print "^";
	if (r_Room has visited) print "- Room^";
	if (r_Saloon has visited) print "- Saloon (Ella)^";
	if (r_Mainstreet has visited) print "- Main Street^";
	if (r_Sheriff has visited) print "- Sheriff (Dunder)^";
	if (r_Store has visited) print "- Store (Bill)^";
	if (r_Barber has visited) print "- Barber (Marten)^";
	if (r_Ranch has visited) print "- Ranch^";
	if (r_Gallows has visited) print "- Gallows^";
	if (r_Cemetery has visited) print "- Cemetery^";
	if (r_Mine has visited) print "- Mine^";
	if (r_Windpump has visited) print "- Wind Pump^";
	if (r_Hillchain has visited) print "- Hill Chain^";
	if (r_Cave has visited) print "- Cave^";
	if (r_Vault has visited) print "- Vault^";
];

[RunOnlySub;
	print "You can RUN TO... these places:^";
	PrintKnownRunLocations();
];

[RunToSub _w _len _dest;
	! Extract typed text from the buffer and match against known locations
	! The consult_words_from / consult_words_to globals give us the topic range
	! We'll use a simple buffer scan approach
	_w = WordAddress(consult_from);
	_len = WordLength(consult_from);

	! Match first word against known locations
	if (_len >= 4 && _w->0 == 'r' && _w->1 == 'o' && _w->2 == 'o' && _w->3 == 'm') _dest = r_Room;
	else if (_len >= 6 && _w->0 == 's' && _w->1 == 'a' && _w->2 == 'l' && _w->3 == 'o' && _w->4 == 'o' && _w->5 == 'n') _dest = r_Saloon;
	else if (_len >= 4 && _w->0 == 'e' && _w->1 == 'l' && _w->2 == 'l' && _w->3 == 'a') _dest = r_Saloon;
	else if (_len >= 4 && _w->0 == 'm' && _w->1 == 'a' && _w->2 == 'i' && _w->3 == 'n') _dest = r_Mainstreet;
	else if (_len >= 6 && _w->0 == 's' && _w->1 == 't' && _w->2 == 'r' && _w->3 == 'e' && _w->4 == 'e' && _w->5 == 't') _dest = r_Mainstreet;
	else if (_len >= 7 && _w->0 == 's' && _w->1 == 'h' && _w->2 == 'e' && _w->3 == 'r' && _w->4 == 'i' && _w->5 == 'f' && _w->6 == 'f') _dest = r_Sheriff;
	else if (_len >= 6 && _w->0 == 'd' && _w->1 == 'u' && _w->2 == 'n' && _w->3 == 'd' && _w->4 == 'e' && _w->5 == 'r') _dest = r_Sheriff;
	else if (_len >= 5 && _w->0 == 's' && _w->1 == 't' && _w->2 == 'o' && _w->3 == 'r' && _w->4 == 'e') _dest = r_Store;
	else if (_len >= 4 && _w->0 == 'b' && _w->1 == 'i' && _w->2 == 'l' && _w->3 == 'l') _dest = r_Store;
	else if (_len >= 6 && _w->0 == 'b' && _w->1 == 'a' && _w->2 == 'r' && _w->3 == 'b' && _w->4 == 'e' && _w->5 == 'r') _dest = r_Barber;
	else if (_len >= 6 && _w->0 == 'm' && _w->1 == 'a' && _w->2 == 'r' && _w->3 == 't' && _w->4 == 'e' && _w->5 == 'n') _dest = r_Barber;
	else if (_len >= 5 && _w->0 == 'r' && _w->1 == 'a' && _w->2 == 'n' && _w->3 == 'c' && _w->4 == 'h') _dest = r_Ranch;
	else if (_len >= 7 && _w->0 == 'g' && _w->1 == 'a' && _w->2 == 'l' && _w->3 == 'l' && _w->4 == 'o' && _w->5 == 'w' && _w->6 == 's') _dest = r_Gallows;
	else if (_len >= 8 && _w->0 == 'c' && _w->1 == 'e' && _w->2 == 'm' && _w->3 == 'e' && _w->4 == 't' && _w->5 == 'e' && _w->6 == 'r' && _w->7 == 'y') _dest = r_Cemetery;
	else if (_len >= 4 && _w->0 == 'm' && _w->1 == 'i' && _w->2 == 'n' && _w->3 == 'e') _dest = r_Mine;
	else if (_len >= 4 && _w->0 == 'w' && _w->1 == 'i' && _w->2 == 'n' && _w->3 == 'd') _dest = r_Windpump;
	else if (_len >= 4 && _w->0 == 'p' && _w->1 == 'u' && _w->2 == 'm' && _w->3 == 'p') _dest = r_Windpump;
	else if (_len >= 8 && _w->0 == 'w' && _w->1 == 'i' && _w->2 == 'n' && _w->3 == 'd' && _w->4 == 'p' && _w->5 == 'u' && _w->6 == 'm' && _w->7 == 'p') _dest = r_Windpump;
	else if (_len >= 4 && _w->0 == 'h' && _w->1 == 'i' && _w->2 == 'l' && _w->3 == 'l') _dest = r_Hillchain;
	else if (_len >= 4 && _w->0 == 'c' && _w->1 == 'a' && _w->2 == 'v' && _w->3 == 'e') _dest = r_Cave;
	else if (_len >= 5 && _w->0 == 'v' && _w->1 == 'a' && _w->2 == 'u' && _w->3 == 'l' && _w->4 == 't') _dest = r_Vault;
	else {
		print "I don't know where that is. Known places:";
		PrintKnownRunLocations();
		rtrue;
	}

	if (_dest hasnt visited)
		"I don't know where that is yet.";
	if (player in _dest)
		"You're already there!";
	if (Rod in player && (_dest == r_Room || _dest == r_Saloon || _dest == r_Mainstreet || _dest == r_Sheriff || _dest == r_Store || _dest == r_Barber || _dest == r_Ranch || _dest == r_Gallows || _dest == r_Cemetery))
		"You shouldn't walk around town with this long metal rod.";
	print (string) random("A short time later...", "A few steps later...", "A few minutes later...", "Shortly afterwards...", "A bit later...");
	print "^";
	PlayerTo(_dest);
];
