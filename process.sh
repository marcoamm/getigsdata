#!/bin/bash

#list of stations
declare -a stations=( "arcc" "arvc" "cbbc" "chuc" "corc" "eurc" "mcmc" "fsic" "fsmc" "gilc" "gjoc" "gric" "halc" "iqac" "kugc" "edmc" "ponc" "qikc" "rabc" "ranc" "repc" "resc" "sacc" "sanc" "talc" )
year=14
weekzero=1773

if [ ! -d "results" ] 
then
	mkdir results
fi

for sta in "${stations[@]}"
do
    for f in ${sta}* 
	do 
		echo ${f} > run
		echo "gpsppp.cmd" >> run
		echo "0,0" >> run
		echo "0,0" >> run
		day=${f:4:3}
		day=$((10#${day}-1))
		dw=$(date -d "20${year}/01/01+$day days" +%w)
		week=$(date -d "20${year}/01/01+$day days" +%U)
		week=$((10#${week}+10#${weekzero}))
		echo "igs${week}${dw}.sp3" >> run
		echo "igs${week}${dw}.clk_30s" >> run
		
		./ppp.exe < run
		mv *.pos results/
	done
done
