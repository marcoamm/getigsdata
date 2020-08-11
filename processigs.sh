#!/bin/bash
gzip -d *.gz
mkdir -p igsseparated

#Go through the list of stations and create separate files
declare -a stations=( "mate" "matg" "medi" "mets" "not1" "nya1" "onsa" "svtl" "wtzr" "yebe" "zeck" )
    
for sta in "${stations[@]}"
do
    #Separates the station tropospheric delay data and save in an unique file
    cat $sta*.*zpd | grep '[A-Z]\{4\} [0-9]\{2\}:[0-9]\{3\}:[0-9]\{5\}' > interm$sta.txt
    sed -i 's/:/ /g' interm$sta.txt
    cat interm$sta.txt | awk '{print $1 " " $2 " " $3 " " $4 " " $5 " " $6 " " $7 " " $8 " " $9 " " $10}'  > ./igsseparated/$sta.txt
done

#Remove intermediate file
rm interm*.txt

#Change date from file
mkdir -p igsfinal

for sta in "${stations[@]}"
do
    cat ./igsseparated/$sta.txt | awk '{ if ($2 < 94) $2=int($2) + 2000; else $2=int($2) + 1900}1' | awk '{ if ($2 % 4 == 0) $3=(($3-1+($4/84600.0))/366.0); else $3=(($3-1+($4/84600.0))/365.0) }1'  | awk '{if ( $4 % 3600 == 0 ) printf "%s %4.9f %.1f %.1f %.3f %.3f %.3f %.3f \n", $1, $2+$3, $5, $6, $7, $8, $9, $10; else print $3}' | grep -i $sta > ./igsfinal/igs$sta.zpd
done
rm -r igsseparated
