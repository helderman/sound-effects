#!/bin/bash

# Telephone dialing 767-8900.
# https://en.wikipedia.org/wiki/DTMF

DURATION=0.12

TONE_1="sox -n -p synth $DURATION sin 697 synth $DURATION sin mix 1209"
TONE_2="sox -n -p synth $DURATION sin 697 synth $DURATION sin mix 1336"
TONE_3="sox -n -p synth $DURATION sin 697 synth $DURATION sin mix 1477"
TONE_A="sox -n -p synth $DURATION sin 697 synth $DURATION sin mix 1633"

TONE_4="sox -n -p synth $DURATION sin 770 synth $DURATION sin mix 1209"
TONE_5="sox -n -p synth $DURATION sin 770 synth $DURATION sin mix 1336"
TONE_6="sox -n -p synth $DURATION sin 770 synth $DURATION sin mix 1477"
TONE_B="sox -n -p synth $DURATION sin 770 synth $DURATION sin mix 1633"

TONE_7="sox -n -p synth $DURATION sin 852 synth $DURATION sin mix 1209"
TONE_8="sox -n -p synth $DURATION sin 852 synth $DURATION sin mix 1336"
TONE_9="sox -n -p synth $DURATION sin 852 synth $DURATION sin mix 1477"
TONE_C="sox -n -p synth $DURATION sin 852 synth $DURATION sin mix 1633"

TONE_STAR="sox -n -p synth $DURATION sin 941 synth $DURATION sin mix 1209"
TONE_0="sox -n -p synth $DURATION sin 941 synth $DURATION sin mix 1336"
TONE_HASH="sox -n -p synth $DURATION sin 941 synth $DURATION sin mix 1477"
TONE_D="sox -n -p synth $DURATION sin 941 synth $DURATION sin mix 1633"

sox "|$TONE_7" "|$TONE_6" "|$TONE_7" "|$TONE_8" "|$TONE_9" "|$TONE_0" "|$TONE_0" "$1"
