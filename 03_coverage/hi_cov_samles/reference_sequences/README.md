# Introduction
Extracting the reference contigs that are used in the manuscript as o today (Mon Oct  2 15:13:59 CEST 2017).

# Files
grep.file: Contains names of the sequences used (fp.py --lengt --header 79_ref_seq.fst | awk 'BEGIN {OFS = " "} ;{print $2, $1}' > 79_ref_seq.genome)
