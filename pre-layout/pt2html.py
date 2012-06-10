#!/usr/bin/env python
# -*- coding: latin1 -*-

import os, sys

cmdline=sys.argv[1:]

f = open(cmdline[0],"r")
a = f.read()
f.close()
a = a.split("\n\n")
for i in a:
    c = i.split("\n")
    print "                <p><a href=\""+c[1]+"\">"+c[0]+"</a><p>"
