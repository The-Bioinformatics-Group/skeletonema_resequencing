#!/bin/bash

# Print some informative error meassages
err() {
    echo "$1 exited unexpectedly";
        exit 1;
	}

# Function for checking the exit code of a child process
ckeckExit() {
if [ "$1" == "0" ]; then
	echo "[Done] $2 `date`";
	else
		err "[Error] $2 returned non-0 exit code in $1";
		exit
		fi
		}

for dir in /nobackup/data6/sylvie/Resequenced_Strains_Godhe_15_01/*
do
	cd $dir/*
	echo $PWD
    	fastqc *.fastq.gz
	ckeckExit $? $PWD
        echo "Done"
done
