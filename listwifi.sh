date +"%% %d %m %y %T.%3N"
iwlist ra0 scan | awk '/Address/ {printf $5" "}
                       /dBm/ {print substr($3,7,3)}'
