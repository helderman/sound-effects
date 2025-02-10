#!/bin/bash

# Based on one of the demo sounds on https://academo.org/demos/spectrum-analyzer/

sox '|sox -n -p synth 0.06 triangle G4-G6 : synth 0.3 triangle G6-G4' "$1" repeat 3
