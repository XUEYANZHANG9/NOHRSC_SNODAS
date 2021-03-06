#! /bin/bash
# 2017-07-10
# E.A. Burakowski
# Retrieves Nov-Apr (2004-2017) NOHRSC SNODAS .tar from National Snow and Ice Data Center (NSDIC)
# server (sidads.colorado.edu)

#custormized by my requirement: masked data ranging from 2004 to 2018
 
mkdir -p download_data
cd download_data

for months in "11_Nov" "12_Dec" "01_Jan" "02_Feb" "03_Mar" "04_Apr" "05_Mar" "06_Jun" "07_Jul" "08_Aug" "09_Sep" "10_Oct"
    do
	  wget -N ftp://sidads.colorado.edu/DATASETS/NOAA/G02158/masked/{2004..2018}/"$months"/*.tar
    done
