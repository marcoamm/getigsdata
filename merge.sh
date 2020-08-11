#!/bin/bash

declare -a stations=( "DLF1" "GMSD" "GOP7" "GOP6" "AIRA" "TSK2" "STK2" "CCJ2" "DAEJ" "NNOR" "VILL" "KOUR" "REDU" "CEBR" "MGUE" "MAS1" "KIRU" "GAMG" "STJ3" "TLSG" "CHPG" "JFNG" "ASCG" "KRGG" "GAMB" "OWMG" "MAYG" "THTG" "RGDG" "ROAP" "DJIG" "HARB" "AREG" "KOUG" "YEL2" "TLSE" "METG" "NKLG" "DYNG" "EBRE" "KOKV" "SEYG" "MAL2" "FAA1" )

for sta in "${stations[@]}"
do
    echo $sta
    ./teqc $sta* > "$sta".18o
done

