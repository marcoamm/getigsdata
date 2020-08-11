#!/bin/bash

for year in {2012..2012}
do
for doy in {001..366}
do
# igs tropo product zpd (zenith path delay)
     wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://cddis.gsfc.nasa.gov/gnss/products/troposphere/zpd/$year/$doy/mate${doy}0.*zpd.gz 
	 wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://cddis.gsfc.nasa.gov/gnss/products/troposphere/zpd/$year/$doy/medi${doy}0.*zpd.gz
	 wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://cddis.gsfc.nasa.gov/gnss/products/troposphere/zpd/$year/$doy/mets${doy}0.*zpd.gz
	 wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://cddis.gsfc.nasa.gov/gnss/products/troposphere/zpd/$year/$doy/not1${doy}0.*zpd.gz
	 wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://cddis.gsfc.nasa.gov/gnss/products/troposphere/zpd/$year/$doy/nya1${doy}0.*zpd.gz
	 wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://cddis.gsfc.nasa.gov/gnss/products/troposphere/zpd/$year/$doy/onsa${doy}0.*zpd.gz
	 wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://cddis.gsfc.nasa.gov/gnss/products/troposphere/zpd/$year/$doy/svtl${doy}0.*zpd.gz
	 wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://cddis.gsfc.nasa.gov/gnss/products/troposphere/zpd/$year/$doy/wtzr${doy}0.*zpd.gz
	 wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://cddis.gsfc.nasa.gov/gnss/products/troposphere/zpd/$year/$doy/yebe${doy}0.*zpd.gz
	 wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://cddis.gsfc.nasa.gov/gnss/products/troposphere/zpd/$year/$doy/zeck${doy}0.*zpd.gz
	 wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://cddis.gsfc.nasa.gov/gnss/products/troposphere/zpd/$year/$doy/matg${doy}0.*zpd.gz
	 wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://cddis.gsfc.nasa.gov/gnss/products/troposphere/zpd/$year/$doy/msel${doy}0.*zpd.gz
	 wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://cddis.gsfc.nasa.gov/gnss/products/troposphere/zpd/$year/$doy/ons1${doy}0.*zpd.gz
	 wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://cddis.gsfc.nasa.gov/gnss/products/troposphere/zpd/$year/$doy/wrlg${doy}0.*zpd.gz
done
done

#for w in {1722..1772}
#do
# all .tro files
#   wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://igs.bkg.bund.de/EPNrepro2/products/$w/*${w}0.tro.Z 
#	wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://igs.bkg.bund.de/EPNrepro2/products/$w/*${w}1.tro.Z 
#	wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://igs.bkg.bund.de/EPNrepro2/products/$w/*${w}2.tro.Z 
#	wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://igs.bkg.bund.de/EPNrepro2/products/$w/*${w}3.tro.Z 
#	wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://igs.bkg.bund.de/EPNrepro2/products/$w/*${w}4.tro.Z 
#	wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://igs.bkg.bund.de/EPNrepro2/products/$w/*${w}5.tro.Z 
#	wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://igs.bkg.bund.de/EPNrepro2/products/$w/*${w}6.tro.Z 

# all eu0w.tro.Z files
#	wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://igs.bkg.bund.de/EPNrepro2/products/$w/eu0${w}7.tro.Z 	
	
# igs orbits and clocks    
#    wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://cddis.gsfc.nasa.gov/pub/gps/products/$w/igs${w}0.* &
#    wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://cddis.gsfc.nasa.gov/pub/gps/products/$w/igs${w}1.* &
#    wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://cddis.gsfc.nasa.gov/pub/gps/products/$w/igs${w}2.* &
#    wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://cddis.gsfc.nasa.gov/pub/gps/products/$w/igs${w}3.* &
#    wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://cddis.gsfc.nasa.gov/pub/gps/products/$w/igs${w}4.* &
#    wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://cddis.gsfc.nasa.gov/pub/gps/products/$w/igs${w}5.* &
#    wget --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 3 ftp://cddis.gsfc.nasa.gov/pub/gps/products/$w/igs${w}6.* #This will download all the week in parallel
done
