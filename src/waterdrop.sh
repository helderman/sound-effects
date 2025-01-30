#!/bin/bash

# Water drop sound.
# Inspired by the tutorial "How To Make Water Drops On A Modular Synthesizer" by emusounds.
# https://www.youtube.com/watch?v=1iyqF3mSzts

sox -n "$1" synth 0.1 sin 300-1800 pad 0 1 reverb
