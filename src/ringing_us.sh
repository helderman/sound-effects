#!/bin/bash

# Imitating US ringing tone.

sox -n "$1" synth 2 sin 440 synth 2 sin mix 480 pad 0 4 repeat 3
