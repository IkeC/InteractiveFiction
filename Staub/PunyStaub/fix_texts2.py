#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Second pass text fixes for PunyStaub."""

import sys

with open('staub.inf', 'r', encoding='utf-8') as f:
    content = f.read()
original = content

def fix(old, new, name):
    global content
    if old in content:
        content = content.replace(old, new, 1)
        print(f'OK: {name}')
    else:
        print(f'NOT FOUND: {name}')
        # Show context around likely location
        # Find something close
        words = old.split()
        for n in range(min(6, len(words)), 2, -1):
            fragment = ' '.join(words[:n])
            idx = content.find(fragment)
            if idx != -1:
                print(f'  (found partial "{fragment}" at position {idx}:')
                print(f'  context: {repr(content[max(0,idx-20):idx+60])}')
                break

# Fix 1: descLampe "aus." when lamp is off
fix(
    'print "Petroleumlampe mit Henkelgriff. Sie ist ";\n    if (Lampe hasnt on) print "nicht ";\n    "angezündet.";',
    'print "Petroleumlampe mit Henkelgriff. ";\n    if (Lampe hasnt on) "Sie ist aus.";\n    "Sie ist angezündet.";',
    'descLampe aus/angezuendet'
)

# Fix 2: nehmeLampe "so nicht ganz ran"
fix(
    '"Du kommst da so nicht ran, die Lampe hängt etwas zu hoch."',
    '"Du kommst so nicht ganz ran, die Lampe hängt etwas zu hoch."',
    'nehmeLampe so nicht ganz ran'
)

# Fix 3: rueckeStuhl "stellst"/"Laterne"
fix(
    'print "Du schiebst einen der Stühle unter den Deckenbalken mit der Lampe.^";',
    'print "Du stellst einen der Stühle unter den Deckenbalken mit der Laterne.^";',
    'rueckeStuhl stellst/Laterne'
)

# Fix 4a: steigAufStuhl exit (inside else branch)
fix(
    '        move player to r_Saloon;\n        print "Du steigst vom Stuhl runter.^";',
    '        move player to r_Saloon;\n        print "Du steigst von dem Stuhl herunter.^";',
    'steigAufStuhl exit runter'
)

# Fix 4b: steigAusStuhl exit
fix(
    '[steigAusStuhl;\n    move player to r_Saloon;\n    print "Du steigst vom Stuhl runter.^";',
    '[steigAusStuhl;\n    move player to r_Saloon;\n    print "Du steigst von dem Stuhl herunter.^";',
    'steigAusStuhl runter'
)

# Fix 5: Barfrau topic 310 option text
fix(
    'TM_INACTIVE 310 "~Hast du auch was zum Anzünden?~"',
    'TM_INACTIVE 310 "~Hast du auch etwas, womit ich die Lampe anzünden kann?~"',
    'Barfrau 310 option'
)

# Fix 6: bf_r310 Streichhölzer → Zündhölzer
fix(
    'runzelt die Stirn. ~Meine Streichhölzer sind fast alle',
    'runzelt die Stirn. ~Meine Zündhölzer sind fast alle',
    'bf_r310 Zünd- not Streichhölzer'
)

# Fix 7: Ladenmann 353 option
fix(
    'TM_INACTIVE 353 "~Haben Sie Streichhölzer?~"',
    'TM_INACTIVE 353 "~Haben Sie vielleicht Streichhölzer für mich?~"',
    'Ladenmann 353 option'
)

# Fix 8: Fensterladen text
fix(
    '"^Ein Fensterladen fliegt mit einem lauten Knall auf und eine Decke wird von zwei dicken Armen kräftig ausgeschüttelt. Eine beeindruckende Staubwolke entsteht und das Fenster wird mit einem Knall wieder zugeworfen."',
    '"^Ein Fensterladen fliegt mit lautem Getöse auf und eine Bettdecke wird von zwei dicken Armen kraftvoll ausgeschüttelt. Dann verschwindet die Decke in einer beeindruckenden Staubwolke und das Fenster wird krachend wieder zugeschlagen."',
    'Fensterladen text'
)

# Fix 9: Brecheisen+Spalt "wieder ein"
fix(
    'Du klopfst und hebelst eine Weile bis endlich ein flaches, handbreites Stück Fels vom Brocken abbricht. Der Spalt ist nun deutlich breiter."',
    'Du klopfst und hebelst eine Weile bis endlich ein flaches, handbreites Stück Fels vom Brocken abbricht. Der Spalt ist nun deutlich breiter.^^Du steckst das Brecheisen wieder ein."',
    'Brecheisen+Spalt wieder ein'
)

# Fix 10: nimm molly (all 3 occurrences)
old10 = '"Du hältst dem Papagei deinen ausgestreckten Arm entgegen. "'
new10 = '"Du hältst Molly deinen ausgestreckten Arm entgegen. "'
count10 = content.count(old10)
if count10 > 0:
    content = content.replace(old10, new10)
    print(f'OK: nimm molly Molly ({count10} occurrences)')
else:
    print(f'NOT FOUND: nimm molly Molly')

# Fix 11: bi_r342 "lächelt, den Blick leicht an dir vorbei gerichtet"
fix(
    'am Kittel ab und lächelt.^^~Tut',
    'am Kittel ab und lächelt, den Blick leicht an dir vorbei gerichtet.^^~Tut',
    'bi_r342 lächelt Blick'
)

# Fix 12: bi_r340 Oberkiefer + line break
fix(
    '~Naja, muss halt, wa?~ Bill grinst und präsentiert dabei einen gelben Schneidezahn in seinem ansonsten zahnlosen Mund.^^',
    '~Naja, muss halt, wa?~^^Bill grinst und präsentiert dabei einen gelben Schneidezahn im Oberkiefer seines ansonsten zahnlosen Mundes.^^',
    'bi_r340 Oberkiefer'
)

# Fix 13: Geselle fight dative "dem Brecheisen"/"der Schaufel"
fix(
    '                    print "BAUZ! Du streckst den Mann mit einem gezielten Schlag mit ";\n                    print (the) second; print " nieder.',
    '                    print "BAUZ! Du streckst den Mann mit einem gezielten Schlag mit ";\n                    if (second == Brecheisen) print "dem Brecheisen"; else print "der Schaufel"; print " nieder.',
    'Geselle fight dative'
)

# Fix 14: leuchtende Taschentuch
fix(
    '"Du steckst das Taschentuch schnell wieder ein.^"',
    '"Du steckst das leuchtende Taschentuch schnell wieder ein.^"',
    'leuchtende Taschentuch'
)

# Fix 15: Bill/Ladenmann Seil option 355
fix(
    'TM_INACTIVE 355 "~Ich muss da runterklettern, haben Sie ein Seil?~"',
    'TM_INACTIVE 355 "~Ich muss wo runterklettern, haben Sie da was für mich?~"',
    'Bill Seil option 355'
)

# Summary
changed = content != original
print(f'\n{"File changed." if changed else "No changes made!"}')

if changed:
    with open('staub.inf', 'w', encoding='utf-8') as f:
        f.write(content)
    print('Saved.')
