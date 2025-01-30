#!/bin/bash

# Sound effect I made in 2015 for my Scratch game "Space Tunnel".
# https://scratch.mit.edu/projects/45921906/
# Note: for the game I added options -b8 -c1 to reduce the filesize.

sox -n "$1" synth pinknoise fade t 0:00.5 0:07 0:05 flanger 0 2 0 60 0.12
