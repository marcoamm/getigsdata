#!/bin/bash

for w in {1199..1773}
do
    for d in {0..6}
    do
        wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 1 -nc ftp://cddis.gsfc.nasa.gov/gnss/products/$w/repro2/ig2${w}${d}.sp3.Z
        wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 1 -nc ftp://cddis.gsfc.nasa.gov/gnss/products/$w/repro2/ig2${w}${d}.clk.Z
    done
done
