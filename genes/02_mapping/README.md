This directory contains mapping runs of transcriptomic data (RNA) to predicted gene regions in DNA.

In the folder single_contig_mapping, These gene regions cut out from contigs have been isolated into single files and each mapping was done individually.

Database files for longa and short are for both bowtie2 and bwa.
Both_sets_* are RNA libraries
Gene_catLNP.fasta are the proteins from Thalassiosira etc. (Light, Nitrogen, Phosphorous)

old: 
old files from when exonerate was still being used

getorf_inclrev_to_long_bowtie2:
orfs mapping to long contigs (wrong reverse contigs)

getorf_to_long_revcomp_bowtie2:
orfs mapping to long contigs (correctly reverse complemented)

getorf_to_short_revcomp_bowtie2:
orfs mapping to short contigs (correctly reverse complemented (?))

RNA_to_short_revcomp_bowtie:
RNA libraries mapped to short contigs using bowtie2

RNA_to_short_revcomp_bwa:
RNA libraries mapped to short contigs using bwa

getorf_inclrev_to_long_bowtie2:
getorf mapped to long contigs (correctly reverse complemented)

