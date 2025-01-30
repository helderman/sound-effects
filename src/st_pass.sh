#!/bin/bash

# Sound effect I made in 2015 for my Scratch game "Space Tunnel".
# https://scratch.mit.edu/projects/45921906/
# Note: for the game I added options -b8 -c1 to reduce the filesize.

sox -n "$1" synth square 60 vol 0.5 fade t 0.2 0.4 0.2 flanger 0 2 0 60 2.5
