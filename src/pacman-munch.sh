#!/bin/bash

# Imitation of Pac-Man munch sound.

sox '|sox -n -p synth 0.1 square 30-200 pad 0 0.05' '|sox -n -p synth 0.1 square 200-30 pad 0 0.05' "$1"
