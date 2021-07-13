#!/usr/bin/python3
import os
import lxml.etree

dirname = os.path.dirname(__file__)
infile = os.path.join(dirname, 'sprites.svg')
outdir = os.path.join(dirname, 'svgs')

tree = lxml.etree.parse(infile, parser=lxml.etree.XMLParser(remove_comments=True))
root = tree.getroot()
for symbol in root:
    name = symbol.attrib['id']
    f = open(os.path.join(outdir, name+'.svg'), 'w')
    svg = lxml.etree.tostring(symbol, encoding='unicode', pretty_print=True)
    svg = svg.replace('symbol', 'svg')
    f.write(svg)
    f.close()