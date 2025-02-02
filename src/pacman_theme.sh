#!/bin/bash

# Imitation of Pac-Man intro theme music.
# Pretty awful sound quality.

D1=0.067
D2=0.134
D4=0.201

BASE1="synth $D2 sin C2 pad 0 $D4 : synth $D2 sin G2"
BASE2="synth $D2 sin C#2 pad 0 $D4 : synth $D2 sin G#2"
BASE3="synth $D2 sin G2 pad 0 $D2 : synth $D2 sin A2 pad 0 $D2 : synth $D2 sin B2 pad 0 $D2 : synth $D2 sin C3 pad 0 $D2"

SOLO1="synth $D1 sin C5 pad 0 $D1 : synth $D1 sin C6 pad 0 $D1 : synth $D1 sin G5 pad 0 $D1 : synth $D1 sin E5 pad 0 $D1 : synth $D1 sin C6 : synth $D2 sin G5 pad 0 $D1 : synth $D2 sin E5 pad 0 $D2"
SOLO2="synth $D1 sin C#5 pad 0 $D1 : synth $D1 sin C#6 pad 0 $D1 : synth $D1 sin G#5 pad 0 $D1 : synth $D1 sin F5 pad 0 $D1 : synth $D1 sin C#6 : synth $D2 sin G#5 pad 0 $D1 : synth $D2 sin F5 pad 0 $D2"
SOLO3="synth $D1 sin D5 : synth $D1 sin D#5 : synth $D1 sin E5 pad 0 $D1 : synth $D1 sin E5 : synth $D1 sin F5 : synth $D1 sin F#5 pad 0 $D1 : synth $D1 sin F5 : synth $D1 sin F#5 : synth $D1 sin G5 pad 0 $D1 : synth $D2 sin C6 pad 0 $D2"

sox -m -v0.9 "|sox -n -p $BASE1 : $BASE1 : $BASE2 : $BASE2 : $BASE1 : $BASE1 : $BASE3" -v0.1 "|sox -n -p $SOLO1 : $SOLO2 : $SOLO1 : $SOLO3" "$1"
