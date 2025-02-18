#!/bin/bash

# Pac-Man 'wakka' munch sound
# Wave form made with phase modulation: sin(4*f*t + 3*sin(2*f*t + 0.5*sin(4*f*t)))
# Frequency f increasing in 5 steps (17 ms each), silence 65 ms, f decreasing in 5 steps

perl -e 'binmode(STDOUT);my$p=0;print pack"f*",map{$p+=0.13+0.055*int($_/136);$_<680?sin(2*$p+3*sin($p+sin(2*$p)/2)):0}(0..939,reverse 0..939)' \
| sox -t raw -r 8k -e float -b 32 -c 1 -v 0.5 - "$1"
