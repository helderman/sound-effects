#!/bin/bash

# Sound effect I designed in 2018 for my live coding presentation
# "YARS: developing a game in HTML5":
# https://youtu.be/5V0jklDVT2g
# Featured in my 2020 port of the game to Scratch:
# https://scratch.mit.edu/projects/417981359/

sox -n "$1" synth 0.25 sin 2000-400 synth 0.25 exp fmod 3000-600 vol 0.3
