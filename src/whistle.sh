#!/bin/bash

# Pretty bad imitation of a whistle...

sox '|sox -n -p synth 0.015 sin G7 : synth 0.015 sin G#7' "$1" repeat 14
