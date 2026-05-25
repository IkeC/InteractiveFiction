#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Apply text fixes to staub.inf"""

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

# ============================================================
# FIX 1: descGalgen - move direction text before event text
# ============================================================
fix(
    '    print "Du stehst vor einem Galgen, bestehend aus zwei Pfosten mit Querbalken und einer Schlinge. Ein Holzpodest dient als Fundament.^^";\n'
    '    if (r_Galgen.visitcounter == 3) {\n'
    '        "~Suchen wohl Ihre Freunde, was? Sowas wie Sie wollen wir hier nicht mehr sehen!~^^Du blickst dich verdutzt um und siehst eine ältere Frau in einem der Häuser verschwinden, mit ihrem Gehstock wild in der Luft herumstochernd.^";\n'
    '    }\n'
    '    "Weiter nördlich glaubst du einige schiefe Kreuze zu erkennen. Nach Westen geht es zurück in die Stadt.^";',
    '    print "Du stehst vor einem Galgen, bestehend aus zwei Pfosten mit Querbalken und einer Schlinge. Ein Holzpodest dient als Fundament.^^";\n'
    '    print "Weiter nördlich glaubst du einige schiefe Kreuze zu erkennen. Nach Westen geht es zurück in die Stadt.^";\n'
    '    if (r_Galgen.visitcounter == 3) {\n'
    '        print "^^~Suchen wohl Ihre Freunde, was? Sowas wie Sie wollen wir hier nicht mehr sehen!~^^Du blickst dich verdutzt um und siehst eine ältere Frau in einem der Häuser verschwinden, mit ihrem Gehstock wild in der Luft herumstochernd.^";\n'
    '    }',
    'descGalgen direction text ordering'
)

# ============================================================
# FIX 2: descFriedhof - move direction text before event text
# ============================================================
fix(
    '    print "Weiter vorne stehen vier Kreuze sauber aufgereiht nebeneinander, jeweils am Kopfende eines ordentlich mit Steinen eingefassten Grabes.^^";\n'
    '    if (r_Friedhof.visitcounter == 2) {\n'
    '        "Ein Gecko sitzt starr auf einem der Grabkreuze und sonnt sich. Als du die Hand nach ihm ausstreckst, verschwindet er blitzartig im Gebüsch.^";\n'
    '    }\n'
    '    "Im Süden siehst du die Umrisse des Galgens.";',
    '    print "Weiter vorne stehen vier Kreuze sauber aufgereiht nebeneinander, jeweils am Kopfende eines ordentlich mit Steinen eingefassten Grabes.^^";\n'
    '    print "Im Süden siehst du die Umrisse des Galgens.^";\n'
    '    if (r_Friedhof.visitcounter == 2) {\n'
    '        print "^^Ein Gecko sitzt starr auf einem der Grabkreuze und sonnt sich. Als du die Hand nach ihm ausstreckst, verschwindet er blitzartig im Gebüsch.^";\n'
    '    }',
    'descFriedhof direction text ordering'
)

# ============================================================
# FIX 3: descWindrad - move direction text before event texts
# ============================================================
fix(
    '    print "Das Windrad ist in etwa fünfzehn Meter Höhe auf einen aus langen Metallstangen bestehenden Gittermast montiert und quietscht bei jeder Bewegung. Eine Heckfahne aus Metall stellt die Rotorblätter automatisch in Windrichtung.^^";\n'
    '    if (r_Windrad.visitcounter == 3) {\n'
    '        "^Zwei Kojoten schleichen sich bis auf wenige Meter an dich heran. Du nimmst einen Stein und wirft ihn in ihre Richtung, woraufhin sie laut aufheulend Reißaus nehmen.";\n'
    '    } else if (r_Windrad.visitcounter == 6) {\n'
    '        "^Einige Kojoten scheinen dich aus einiger Entfernung zu beobachten. Du machst eine beiläufige Wurfbewegung und sie rennen davon.";\n'
    '    } else if (r_Windrad.visitcounter == 8) {\n'
    '        "^^squieeek ... squieeeeek ...^^Du kannst dieses verdammte Windrad langsam nicht mehr hören, geschweige denn sehen. Wofür ist das Teil überhaupt?^^Du wischst dir den Schweiß von der Stirn und ziehst in Erwägung öfter mal zu laufen, um schneller voranzukommen.";\n'
    '    }\n'
    '    "Im Norden geht es zurück zur Ranch. Ein Weg führt nach Westen Richtung Hügelkette.";',
    '    print "Das Windrad ist in etwa fünfzehn Meter Höhe auf einen aus langen Metallstangen bestehenden Gittermast montiert und quietscht bei jeder Bewegung. Eine Heckfahne aus Metall stellt die Rotorblätter automatisch in Windrichtung.^^";\n'
    '    print "Im Norden geht es zurück zur Ranch. Ein Weg führt nach Westen Richtung Hügelkette.^";\n'
    '    if (r_Windrad.visitcounter == 3) {\n'
    '        print "^^Zwei Kojoten schleichen sich bis auf wenige Meter an dich heran. Du nimmst einen Stein und wirft ihn in ihre Richtung, woraufhin sie laut aufheulend Reißaus nehmen.^";\n'
    '    } else if (r_Windrad.visitcounter == 6) {\n'
    '        print "^^Einige Kojoten scheinen dich aus einiger Entfernung zu beobachten. Du machst eine beiläufige Wurfbewegung und sie rennen davon.^";\n'
    '    } else if (r_Windrad.visitcounter == 8) {\n'
    '        print "^^squieeek ... squieeeeek ...^^Du kannst dieses verdammte Windrad langsam nicht mehr hören, geschweige denn sehen. Wofür ist das Teil überhaupt?^^Du wischst dir den Schweiß von der Stirn und ziehst in Erwägung öfter mal zu laufen, um schneller voranzukommen.^";\n'
    '    }',
    'descWindrad direction text ordering'
)

# ============================================================
# FIX 4: descHuegelkette - Molly "mit den Flügeln"
# ============================================================
fix(
    '"^^Auf einem Felsbrocken sitzt Molly und flattert aufgeregt."',
    '"^^Auf einem Felsbrocken sitzt Molly und flattert aufgeregt mit den Flügeln."',
    'descHuegelkette Molly mit den Flügeln'
)

# ============================================================
# FIX 5: Ranch ball boy - remove extra single quotes around speech  
# ============================================================
fix(
    "!~'~Sie ham nix gesehen Mister!~'~",
    "!~Sie ham nix gesehen Mister!~",
    "Ranch ball boy extra quotes"
)
# Try alternate quoting
if "'~Sie ham nix gesehen Mister!~'" in content:
    content = content.replace("'~Sie ham nix gesehen Mister!~'", "~Sie ham nix gesehen Mister!~", 1)
    print("OK (alt): Ranch ball boy extra quotes")

# ============================================================
# FIX 6: Lampe description text
# ============================================================
fix(
    '"Petroleumlampe mit einem Griff. Sie ist "',
    '"Petroleumlampe mit Henkelgriff. Sie ist "',
    'Lampe Henkelgriff'
)

# ============================================================
# FIX 7: nehmeLampe text
# ============================================================
fix(
    '"Du kommst da so nicht ran"',
    '"Du kommst so nicht ganz ran"',
    'nehmeLampe da so nicht ran'
)

# ============================================================
# FIX 8: nehmeLampe Ella Augenbraue
# ============================================================
fix(
    'print_ret (The) Barfrau, " hebt eine Augenbraue. ~Was machst du denn da?~"',
    'print_ret (The) Barfrau, " zieht eine Augenbraue hoch. ~Was genau soll das werden?~"',
    'nehmeLampe Ella Augenbraue'
)

# ============================================================
# FIX 9: zuendeLampeAn - nothing to light with
# ============================================================
fix(
    '"Du hast nichts zum Anzünden."',
    '"Du hast nichts, um die Lampe anzuzünden."',
    'zuendeLampeAn nothing to light'
)

# ============================================================
# FIX 10: zuendeLampeAn - match text
# ============================================================
fix(
    '"Du nimmst ein Streichholz und fährst damit über deinen rauen Daumennagel, dann hältst du es sanft an den Docht der Lampe. Ein gemütliches Licht verbreitet sich."',
    '"Du nimmst eines der Schwefelhölzer und reißt es an deinem schartigen Daumennagel an. Behutsam hältst du es an den Docht der Lampe. Ein behagliches Licht breitet sich aus."',
    'zuendeLampeAn Schwefelholz text'
)

# ============================================================
# FIX 11: Stuhl action - stellst vs schiebst, Laterne vs Lampe
# ============================================================
fix(
    '"Du schiebst einen der Stühle unter den Deckenbalken mit der Lampe."',
    '"Du stellst einen der Stühle unter den Deckenbalken mit der Laterne."',
    'Stuhl schiebst->stellst, Lampe->Laterne'
)

# ============================================================
# FIX 12: Barfrau Streichhölzer topic option text
# ============================================================
fix(
    '"Hast du auch was zum Anzünden?"',
    '"Hast du auch etwas, womit ich die Lampe anzünden kann?"',
    'Barfrau Streichhölzer option text'
)

# ============================================================
# FIX 13: Barfrau Streichhölzer - Ella response "Zündhölzer"
# ============================================================
fix(
    '"Meine Streichhölzer sind fast alle"',
    '"Meine Zündhölzer sind fast alle"',
    'Ella Zündhölzer vs Streichhölzer'
)

# ============================================================
# FIX 14: Ladenmann Streichhölzer option text
# ============================================================
fix(
    '"Haben Sie Streichhölzer?"',
    '"Haben Sie vielleicht Streichhölzer für mich?"',
    'Ladenmann Streichhölzer option'
)

# ============================================================
# FIX 15: Hauptstraße Fensterladen text
# ============================================================
fix(
    '"Ein Fensterladen fliegt mit einem lauten Knall auf und eine Decke wird von zwei dicken Armen kräftig ausgeschüttelt. Eine beeindruckende Staubwolke entsteht und das Fenster wird mit einem Knall wieder zugeworfen."',
    '"Ein Fensterladen fliegt mit lautem Getöse auf und eine Bettdecke wird von zwei dicken Armen kraftvoll ausgeschüttelt. Dann verschwindet die Decke in einer beeindruckenden Staubwolke und das Fenster wird krachend wieder zugeschlagen."',
    'Hauptstraße Fensterladen text'
)

# ============================================================
# FIX 16: x decke - Mächtige Holzbalken text
# ============================================================
fix(
    '"Massive Holzbalken verlaufen unter der Decke."',
    '"Mächtige Holzbalken stützen die Decke des großen Raumes. An einem der Balken ist ein langer Nagel eingeschlagen, daran baumelt eine Petroleumlampe."',
    'x decke Mächtige Holzbalken'
)

# ============================================================
# FIX 17: Seil tying text
# ============================================================
fix(
    '"Du schlägst das Seil mehrfach um den spitzen Felsen und verknotest es fest. An dem Knoten rüttelnd überzeugst du dich, dass er hält."',
    '"Du bindest das Seil um den Felsen und fixierst es mit einem ordentlichen Knoten."',
    'Seil tying text'
)

# ============================================================
# FIX 18: r_Hoehle descent text - greifst -> greift, Füsse -> Füße
# ============================================================
fix(
    '"Du nimmst den Henkel der Petroleumlampe zwischen die Zähne und greifst mit beiden Händen das Seil.^^Die Füsse gegen die Felswand gestemmt, seilst du dich langsam ab.^"',
    '"Du nimmst den Henkel der Petroleumlampe zwischen die Zähne und greift mit beiden Händen das Seil.^^Die Füße gegen die Felswand gestemmt, seilst du dich langsam ab.^"',
    'r_Hoehle descent greifst->greift, Füsse->Füße'
)

# ============================================================
# FIX 19: Brecheisen "Du steckst das Brecheisen wieder ein."
# ============================================================
# Look for the Brecheisen/Spalt handler
fix(
    '"Du steckst das Brecheisen in den Spalt und drückst kräftig dagegen an. Das Mauerwerk gibt krachend nach.^^"',
    '"Du steckst das Brecheisen in den Spalt und drückst kräftig dagegen an. Das Mauerwerk gibt krachend nach.^^Du steckst das Brecheisen wieder ein.^^"',
    'Brecheisen steckst wieder ein'
)

# ============================================================
# FIX 20: Barbier - nimm molly "Du hältst Molly" vs "dem Papagei"
# ============================================================
fix(
    '"Du hältst dem Papagei deinen ausgestreckten Arm entgegen."',
    '"Du hältst Molly deinen ausgestreckten Arm entgegen."',
    'nimm molly text'
)

# ============================================================
# FIX 21: Bill bi_r342 - "den Blick leicht an dir vorbei gerichtet"
# ============================================================
fix(
    '"lächelt."',
    '"lächelt, den Blick leicht an dir vorbei gerichtet."',
    'Bill bi_r342 lächelt'
)

# ============================================================
# FIX 22: Bill bi_r343 - "Lucy is' 'n feines Mädchen"
# ============================================================
fix(
    '"Lucy is\'n feines Mädchen"',
    '"Lucy is\' \'n feines Mädchen"',
    "Bill bi_r343 Lucy is'n"
)

# ============================================================
# FIX 23: Brecheisen grammar - "mit den" -> "mit dem"
# ============================================================
fix(
    '"mit den Brecheisen"',
    '"mit dem Brecheisen"',
    'Brecheisen grammar mit dem'
)

# Save
if content != original:
    with open('staub.inf', 'w', encoding='utf-8') as f:
        f.write(content)
    print('\nFile saved.')
else:
    print('\nNo changes made!')
