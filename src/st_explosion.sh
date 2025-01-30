#!/bin/bash

# Sound effect I made in 2015 for my Scratch game "Space Tunnel".
# https://scratch.mit.edu/projects/45921906/
# Note: for the game I added options -b8 -c1 to reduce the filesize.

sox -n "$1" synth whitenoise fade h 0 4 4 flanger 0 2 0 30 0.1 synth 4 exp fmod 50-400
