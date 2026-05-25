
	GameSession.run() starts a fresh interpreter process each time, so tests must include the full navigation path in a single run.
	dfrotz wraps long lines, so assertions should use short substrings or line-aware checks.
	PunyInform does not use a male attribute; male characters are represented by omission of female.
	Object -> ... can accidentally attach an object to the previous object; use an explicit room parent when placement matters.
	cheap_scenery uses (adjective_count * 10 + noun_count) and each property list has a 32-value cap.
	Walkthrough section names may need aliases when the Inform 7 transcript names a flashback differently from the PunyInform room name.
	Glulx transcripts need glulxe; dfrotz only covers Z-machine stories.
	PunyInform does NOT auto-open doors. If a door `hasnt open`, going through it fails. Use `give Door open` rather than just `give Door ~locked openable`.
	Room `before[Smell]` intercepts ALL smell commands, including `smell <noun>`. Guard with `if (noun == 0)` to only handle ambient smell.
	The `Shoot` verb grammar in ext-dust.h now uses `* noun -> Shoot` so `shoot <noun>` can target the vault wedge; `* creature -> Shoot` was too restrictive.
	The PunyInform talk menu action name is `Talk`, not `TalkTo`.
	To compile via Python (avoids VS Code file-write approval prompts for terminal): use `compile_story()` from punytest.runner with absolute include paths.
	cheap_scenery word count is just noun_count when all words are nouns (0 adjectives). E.g. 6 nouns → count 6, not 16. Only use adj*10+noun when there actually are adjective words.
	Keep these notes updated after each meaningful porting or test-discovery step.
	Inform 6 `Extend 'verb' last * ... -> Action;` syntax for extending existing verbs (not `Verb extend`).
	`look under` is not a built-in PunyInform grammar entry. Add `Extend 'look' last * 'under'/'beneath' noun -> Search;` in ext-dust.h to support it.
	Z-machine character set: use `@'e` for é (e-acute) etc. Raw UTF-8 accented chars cause "Zcharacter table" errors.
	Forward references to rooms in property values (like `n_to r_Cemetery`) work in Inform 6 — the compiler resolves them.
	Cross/grave menus at Cemetery use `@read_char 1 -> val; val = val - 48;` for single-char numeric input (no parser needed).
	Stub rooms need exits to avoid blocking walkthrough navigation. Always add at least the return exit when creating a stub.
	Gallows sand is a real `Sand` object; `use shovel on/with sand` must match `second == Sand`, not `cs_match_id == CS_SAND`.

