#!/bin/bash
declare -a centers=( "as0" "go4" "ig0" "lp1" "mu2" )


for w in {1043..1721}
do    
    for c in "${centers[@]}"
    do
        wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://igs.bkg.bund.de/EPNrepro2/products/$w/${c}${w}0.tro.Z 
        wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://igs.bkg.bund.de/EPNrepro2/products/$w/${c}${w}1.tro.Z 
        wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://igs.bkg.bund.de/EPNrepro2/products/$w/${c}${w}2.tro.Z 
        wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://igs.bkg.bund.de/EPNrepro2/products/$w/${c}${w}3.tro.Z 
        wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://igs.bkg.bund.de/EPNrepro2/products/$w/${c}${w}4.tro.Z 
        wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://igs.bkg.bund.de/EPNrepro2/products/$w/${c}${w}5.tro.Z 
        wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://igs.bkg.bund.de/EPNrepro2/products/$w/${c}${w}6.tro.Z 
    done
done
