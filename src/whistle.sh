#!/bin/bash

# Pretty bad imitation of a whistle...

sox '|sox -n -p synth 0.015 sin 2000' '|sox -n -p synth 0.015 sin 2200' "$1" repeat 14
