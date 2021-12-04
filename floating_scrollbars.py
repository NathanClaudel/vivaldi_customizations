#!python

import sys

OPTION = "--enable-features=OverlayScrollbar --password-store=basic"

filename = sys.argv[1]
f = open(filename, "r")

lines = f.readlines()
for i in range(len(lines)):
    line = lines[i]
    if(line.startswith("Exec")):
        lines[i] = line.replace("\n", " " + OPTION + "\n")
f.close()

f = open(filename, "w")
for line in lines:
    f.write(line)

f.close()
