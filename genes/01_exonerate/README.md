# This folder contains exonerate runs to predicted gene regions.

In order to recieve GFF files as output by exonerate, a script located at https://raw.githubusercontent.com/hyphaltip/genome-scripts/master/data_format/process_exonerate_gff3.pl can be used. Not that the following setting need to be provided to exonerate for this script to function:

    --showtargetgff yes
    --ryo ">%qi length=%ql alnlen=%qal\n>%ti length=%tl alnlen=%tal\n"
