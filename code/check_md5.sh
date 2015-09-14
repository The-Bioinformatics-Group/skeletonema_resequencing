#!/bin/bash

for dir in /nobackup/data6/sylvie/Resequenced_Strains_Godhe_15_01/*
do
	cd $dir/*
	echo $dir
    	md5sum -c *.md5
        echo "Done"
done
