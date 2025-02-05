#!/bin/bash

# Imitation of Pac-Man intro theme music.

D1=0.067
D2=0.134
D3=0.201
D4=0.268
D6=0.402
D12=0.804
D14=0.938

BF="vol 0.3 fade 0 $D14 $D12 treble -20 trim 0"
SF="vol 0.7 pad 1@$D1 trim 0"

BASE2="synth saw C#2 $BF $D6 : synth saw G#2 $BF $D2"
BASE3="synth saw G2 $BF $D4 : synth saw A2 $BF $D4 : synth saw B2 $BF $D4 : synth saw C3 $BF $D4"
BASE2+=" : $BASE2"
BASE1=${BASE2//#/}

SOLO1="synth sin C5 $SF $D2 : synth sin C6 $SF $D2 : synth sin G5 $SF $D2 : synth sin E5 $SF $D2 : synth sin C6 $SF $D1 : synth sin G5 $SF $D3 : synth sin E5 $SF $D4"
SOLO2="synth sin C#5 $SF $D2 : synth sin C#6 $SF $D2 : synth sin G#5 $SF $D2 : synth sin F5 $SF $D2 : synth sin C#6 $SF $D1 : synth sin G#5 $SF $D3 : synth sin F5 $SF $D4"
SOLO3="synth sin D5 $SF $D1 : synth sin D#5 $SF $D1 : synth sin E5 $SF $D2 : synth sin E5 $SF $D1 : synth sin F5 $SF $D1 : synth sin F#5 $SF $D2 : synth sin F5 $SF $D1 : synth sin F#5 $SF $D1 : synth sin G5 $SF $D2 : synth sin C6 $SF $D4"

sox -m "|sox -n -p $BASE1 : $BASE2 : $BASE1 : $BASE3" "|sox -n -p $SOLO1 : $SOLO2 : $SOLO1 : $SOLO3" "$1"
