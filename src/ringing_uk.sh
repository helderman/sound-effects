#!/bin/bash

# Imitating UK ringing tone.

sox -n "$1" synth 0.4 sin 400 synth 0.4 sin mix 450 pad 0 0.2 repeat 1 pad 0 2 repeat 3
