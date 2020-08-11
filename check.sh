#!/bin/bash

#Define list of stations
declare -a stations=("CKIS")

#Start loop on the selected dates
for year in {2003..2017}
do   
    ans=$(($year % 4))
    if [ $ans -eq 0 ]; 
    then
        for day in {001..366}
        do
           echo "Checking year $year day $day"
           list="$(wget -S --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 --spider ftp://cddis.gsfc.nasa.gov/pub/gps/data/daily/$year/$day/${year:2:2}o/ 2>&1)"
           for sta in "${stations[@]}"
           do
               res="$(echo $list | grep -i -o -P  ".{0,50}$sta" | head -1)"
               if [[ $(echo $res | wc -m) -gt 5 ]];
               then
                   if [[ $(echo $res | cut -d' ' -f6) -gt 1000 ]];
                   then
                       echo "$year $day 1" >> $sta.txt
                   else
                       echo "$year $day 0" >> $sta.txt
                   fi
               else
                   echo "$year $day 0" >> $sta.txt
               fi
            done
        done
    else
        for day in {001..365}
        do
           echo "Checking year $year day $day"
           list="$(wget -S --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 0 --spider ftp://cddis.gsfc.nasa.gov/pub/gps/data/daily/$year/$day/${year:2:2}o/ 2>&1)" 
           for sta in "${stations[@]}"
           do
               res="$(echo $list | grep -i -o -P  ".{0,50}$sta" | head -1)"
               if [[ $(echo $res | wc -m) -gt 5 ]];
               then
                   if [[ $(echo $res | cut -d' ' -f6) -gt 1000 ]];
                   then
                       echo "$year $day 1" >> $sta.txt
                   else
                       echo "$year $day 0" >> $sta.txt
                   fi
               else
                   echo "$year $day 0" >> $sta.txt
               fi
          done
       done
    fi           
done

#Generate statistics
for sta in "${stations[@]}"
do
echo "$sta has $(cat $sta.txt | grep -w 1 | wc -l) active days. Availability of $(bc -l <<< "scale = 2; 100*$(cat $sta.txt | grep -w 1 | wc -l) / $(cat $sta.txt | wc -l)")%. Maximum gap of $(cat $sta.txt | awk '{print $3}' | uniq -c | grep -w 0 | awk '{print $1}' | sort -g | tail -1) days. Starts at $(cat $sta.txt | grep -w 1 | head -1 | awk '{print $1, $2}') and ends at $(cat $sta.txt | grep -w 1 | tail -1 | awk '{print $1, $2}')"
done
