#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Flashback sequence fix for PunyStaub."""

with open('staub.inf', 'r', encoding='utf-8') as f:
    content = f.read()

old = (
    '        move Stange to r_Huegelkette;\n'
    '        "Du schiebst die lange Metallstange langsam in den Spalt. Passt perfekt!^^'
    'Du packst die Stange mit beiden Händen am freien Ende und drückst sie kräftig Richtung Berg. '
    'Der Brocken scheint sich leicht zu bewegen. ~BRAAAK!~ krächzt Molly aufgeregt und lässt sich auf deiner Schulter nieder.^^'
    'Du blickst dich noch einmal um - es scheint niemand in Hörweite zu sein. '
    'Mit deinem ganzen Gewicht stemmst du dich erneut gegen die Stange, und siehe da - der Brocken löst sich!^^'
    'RRRRRRRRRRRRRR...";'
)

new = (
    '        move Stange to r_Huegelkette;\n'
    '        give Stange scenery;\n'
    '        print "Du schiebst die lange Metallstange langsam in den Spalt. Passt perfekt!^^'
    'Du packst die Stange mit beiden Händen am freien Ende und drückst sie kräftig Richtung Berg. '
    'Der Brocken scheint sich leicht zu bewegen. ~BRAAAK!~ krächzt Molly aufgeregt und lässt sich auf deiner Schulter nieder.^^'
    'Du blickst dich noch einmal um - es scheint niemand in Hörweite zu sein. '
    'Mit deinem ganzen Gewicht stemmst du dich erneut gegen die Stange, und siehe da - der Brocken löst sich!^^";\n'
    '        style bold; print "RRRRRRRRRRRRRR..."; style roman;\n'
    '        print "^^";\n'
    '        doScreenbreak();\n'
    '        style underline; print "Ihr seid schon ewig nicht mehr hier am Pier gewesen. '
    'Sie wollte das Geld wie immer sparen für später, aber heute wolltest du unbedingt mit ihr ans Meer.^^'
    '~Mit Hut oder ohne, was denkst du?~^^'
    'Claire sitzt auf einem Schemel und hält lachend den wild im Wind flatternden Hut fest. '
    'Du hast dem Zeichner zwei Dollar gegeben, hoffentlich wird das ein schönes Bild. '
    'Sein Kohlestück huscht hastig und geübt über das Papier.^^'
    'Möwen kreisen am Ende des Piers und kreischen laut auf, als ein kleiner Junge versucht sie zu fangen. '
    'Sie dreht den Kopf und lächelt dich an. Du ballst die Faust in der Tasche, den Ring dabei fest umklammernd.^"; style roman;\n'
    '        print "^Wo bist du, Claire?^";\n'
    '        print "^";\n'
    '        doScreenbreak();\n'
    '        move Papagei to r_Barbier;\n'
    '        "Du öffnest die Augen.^^'
    'Offenbar hast du dir (wieder einmal) den Kopf gestoßen, diesmal wohl, als du dich vor dem losrollenden Felsbrocken mit einem Hechtsprung in Sicherheit bringen wollest. '
    'Zumindest das scheint funktioniert zu haben.^^'
    'Langsam rappelst du dich auf und klopfst dir den Staub von den Schultern. Was für ein Scheißtag.";'
)

print('Old found:', old in content)
if old in content:
    content = content.replace(old, new, 1)
    with open('staub.inf', 'w', encoding='utf-8') as f:
        f.write(content)
    print('Saved.')
else:
    # debug: find close match
    fragment = 'RRRRRRRRRRRRRR'
    idx = content.find(fragment)
    if idx != -1:
        print('Found RRRR at index', idx)
        print('Context:', repr(content[max(0,idx-200):idx+50]))
