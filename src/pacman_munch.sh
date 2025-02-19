#!/bin/bash

# Pac-Man 'waka' munch sound - not 100% accurate but comes pretty close
# Reverse-engineered simply by studying the wave forms of a PCM recording of the original sound
# Ruud Helderman, Jan-Feb 2025 - MIT License
# Wave form made with phase modulation: sin(4*pi*f*t + 3*sin(2*pi*f*t + 0.5*sin(4*pi*f*t)))
# Stepwise increase f (165/235/305/375/445 Hz, each 16.78 ms), silence 66 ms, stepwise decrease f

perl -e 'binmode(STDOUT);my$p=0;print pack"f*",map{$p+=0.047+int($_/740)/50;$_<3700?sin($p+3*sin($p/2+sin($p)/2)):0}(0..5155,reverse 0..5155)' \
| sox -t raw -r 44100 -e float -b 32 -c 1 -v 0.5 - "$1"
