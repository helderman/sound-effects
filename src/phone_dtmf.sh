#!/bin/bash

# Telephone dialing 767-8900.
# https://en.wikipedia.org/wiki/DTMF

DURATION=0.12

TONE_1="synth $DURATION sin 697 synth $DURATION sin mix 1209"
TONE_2="synth $DURATION sin 697 synth $DURATION sin mix 1336"
TONE_3="synth $DURATION sin 697 synth $DURATION sin mix 1477"
TONE_A="synth $DURATION sin 697 synth $DURATION sin mix 1633"

TONE_4="synth $DURATION sin 770 synth $DURATION sin mix 1209"
TONE_5="synth $DURATION sin 770 synth $DURATION sin mix 1336"
TONE_6="synth $DURATION sin 770 synth $DURATION sin mix 1477"
TONE_B="synth $DURATION sin 770 synth $DURATION sin mix 1633"

TONE_7="synth $DURATION sin 852 synth $DURATION sin mix 1209"
TONE_8="synth $DURATION sin 852 synth $DURATION sin mix 1336"
TONE_9="synth $DURATION sin 852 synth $DURATION sin mix 1477"
TONE_C="synth $DURATION sin 852 synth $DURATION sin mix 1633"

TONE_STAR="synth $DURATION sin 941 synth $DURATION sin mix 1209"
TONE_0="synth $DURATION sin 941 synth $DURATION sin mix 1336"
TONE_HASH="synth $DURATION sin 941 synth $DURATION sin mix 1477"
TONE_D="synth $DURATION sin 941 synth $DURATION sin mix 1633"

sox -n "$1" $TONE_7 : $TONE_6 : $TONE_7 : $TONE_8 : $TONE_9 : $TONE_0 : $TONE_0
