#!/bin/bash

declare -a stations=("DRAO" "FAIR" "MAS1" "WTZR" "MIZU" "ZIMM" "NYAL" "TSKB" "TLSE" "KOKB" "HERS" "ALIC" "ONSA" "HOB2" "TSK2" "STJO" "STK2" "AIRA" "ALGO" "EBRE" "HARB" "CAS1" "NNOR" "CRO1" "MAC1" "DAEJ" "NKLG" "BRAZ" "UFPR" "KOUR" "GMSD" "ROAP" "CCJ2" "KOKV" "SANT" "BAKE" "MDO1" "MBAR" "KAT1" "WES2" "KOUG" "BADG" "THTG" "YEL2" "DYNG" "STJ3" "METG" "RGDG" "CHPG" "JFNG" "SEYG" "MAYG" "KRGG" "TLSG" "GAMB" "DJIG" "GOP7" "DLF1")

for y in {2007..2017}
do
    for d in {001..365..7}
    do
        for s in "${stations[@]}"
        do
            wget --retry-connrefused --waitretry=2 --read-timeout=15 -t 3 ftp://cddis.gsfc.nasa.gov/pub/gps/data/daily/$y/$d/${y:2}o/${s,,}${d}0.${y:2}o.Z
        done
    done
done
