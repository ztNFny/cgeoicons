#!/usr/bin/python3
import os
import re
import lxml.etree

dirname = os.path.dirname(__file__)
outdir = os.path.join(dirname, 'svgs')

files = ['dots.svg', 'markers.svg', 'misc.svg', 'types.svg', 'types_disabled.svg', 'waypoints.svg', 'waypoints_disabled.svg', 'marker_bg.svg']
for f in files:
    infile = os.path.join(dirname, f)
    tree = lxml.etree.parse(infile, parser=lxml.etree.XMLParser(remove_comments=True))
    root = tree.getroot()
    for symbol in root:
        name = symbol.attrib['id']
        m = re.search(r'\d$', name)
        if m is not None:
            continue
        f = open(os.path.join(outdir, name+'.svg'), 'w')
        svg = lxml.etree.tostring(symbol, encoding='unicode', pretty_print=True)
        svg = svg.replace('symbol', 'svg')
        f.write(svg)
        f.close()