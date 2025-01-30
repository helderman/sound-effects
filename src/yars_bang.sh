#!/bin/bash

# Sound effect I designed in 2018 for my live coding presentation
# "YARS: developing a game in HTML5":
# https://youtu.be/5V0jklDVT2g
# Featured in my 2020 port of the game to Scratch:
# https://scratch.mit.edu/projects/417981359/

sox -n "$1" synth pinknoise fade 0 3 3 overdrive 30
