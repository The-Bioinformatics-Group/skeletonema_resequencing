#!/bin/bash

# This code generats scripts for the SGE queue system. 
# When executed in the "data/Resequenced_Strains_Godhe_15_01" directory, 
# the output will be one SGE script per sub-directory that contains 
# data (e.g. for each sub-directory named something like "P1872_103").

# Usage: cd data/Resequenced_Strains_Godhe_15_01/
#	 ../../code/prepare_sequences.sh
# 	 for i in `find -name "*.sge"`; do qsub $i; done


# This function creates the SGE file and fills it with content.
function sgecode {
echo "#!/bin/bash

# Set the working directory for the analysis
#$ -wd $DIR/150723_BC6T2NANXX

# Set teh queue to run the analysis on
#$ -q high_mem

# Shell used for this job
#$ -S /bin/bash

    
    /nobackup/data6/skeletonema_resequencing/code/prepare_sequences.sh
"
}


# Identify each sub-directory that contains data that should be analysed
for DIR in `find $PWD -maxdepth 1 -type d`
do
    # Identify directory that contains data
    if [ $DIR == $PWD ]
        then
            # Skip the working directory
            continue
	else
            # Figure out what name to give the SHE-script.
	    SGEFILE=$(basename $DIR).sge
            
	    # Create the SGE script and fill it with content
	    touch $SGEFILE
	    sgecode > $SGEFILE

    fi	

done
