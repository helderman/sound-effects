#!/bin/bash

# Sound effect I made in 2020 in response to a question on stackoverflow.com:
# https://stackoverflow.com/a/63468017/2485966

sox -n "$1" synth 3 sin 960 synth 3 sin fmod 1920 fade l 0 3 2.8 trim 0 1 repeat 2
