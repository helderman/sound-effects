#!/bin/bash

# Pac-Man death sound - not 100% accurate but comes pretty close
# Reverse-engineered simply by studying the wave forms of a PCM recording of the original sound
# Ruud Helderman, February 2025 - MIT License
# 1st wave form is a mix of 3 sines: 0.5*sin(2*pi*f*t) - 0.5*sin(4*pi*f*t))) - 0.3*sin(8*pi*f*t)))
# 2nd wave form is a single sine
# Changing frequency f does the rest

perl -e 'binmode(STDOUT);my$p=0;print pack"f*",((map{$p+=.1-$_*7e-7+cos($_/1413)/150;sin($p)/2-sin(2*$p)/2-sin(4*$p)*.3}(0..48829)),(map{$_<0?0:sin($p+=sin($_/6e3)*.3)/2}(-730..8e3,-1460..8e3)))' \
| sox -t raw -r 44100 -e float -b 32 -c 1 -v 0.5 - "$1"
