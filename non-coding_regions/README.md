# Introduction
* PWD: /nobackup/data6/skeletonema_resequencing/non-coding_regions
* Non-coding regions without repeats were identified in 50 PacBio contigts with preliminary annotations. The jBrowser server on Albiorix was used for this.
* The identified sequence were then BLASTed to the /nobackup/data5/data/skeletonema/assemblies/Sm_300-650_clc-assembly_novo_2000bp.fa database.

# Files
* grep.txt: Headers of the identified sequences in `Sm_300-650_clc-assembly_novo_2000bp.fst`
* nc_ref_v1_non-repeat.fst: Query sequences from the PacBio assembly used to query `Sm_300-650_clc-assembly_novo_2000bp.fst`
* nc_ref_v1_non-repeat_to_Sm_300-650_clc-assembly_novo_2000bp.BLASTn.txt: Illumina assembly
* nc_regions.bed: Coordinates of the non-coding regions to us in `nc_regions_to_use.fst` 
* nc_regions_to_use.fst: Sequences to map Illumina reads to and extract SNP data from
* README.md: This file
* runBlast.sge: Blast command used for the analysis

# tmp. result
*  Identities = 1046/1087 (96%), Gaps = 14/1087 (1%)
*  Identities = 1103/1130 (98%), Gaps = 3/1130 (0%)
*  Identities = 1128/1333 (85%), Gaps = 92/1333 (7%) Skip.
*  Identities = 1308/1338 (98%), Gaps = 22/1338 (2%)
*  Identities = 1343/1536 (87%), Gaps = 99/1536 (6%) Skip.
*  Identities = 1732/1815 (95%), Gaps = 47/1815 (3%)
*  Identities = 1923/1925 (99%), Gaps = 2/1925 (0%)
*  Identities = 1956/1974 (99%), Gaps = 4/1974 (0%)
*  Identities = 2151/2220 (97%), Gaps = 24/2220 (1%)
*  Identities = 2171/2246 (97%), Gaps = 43/2246 (2%)
*  Identities = 2253/2353 (96%), Gaps = 28/2353 (1%)
*  Identities = 2403/2481 (97%), Gaps = 27/2481 (1%)
*  Identities = 2649/2695 (98%), Gaps = 16/2695 (1%)
*  Identities = 2698/2722 (99%), Gaps = 4/2722 (0%)
*  Identities = 2708/2742 (99%), Gaps = 9/2742 (0%)
*  Identities = 3133/3149 (99%), Gaps = 5/3149 (0%)
*  Identities = 3291/3300 (99%), Gaps = 5/3300 (0%)
*  Identities = 3459/3511 (99%), Gaps = 18/3511 (1%)
*  Identities = 3670/3673 (99%), Gaps = 2/3673 (0%)
*  Identities = 3675/3758 (98%), Gaps = 33/3758 (1%)
*  Identities = 3682/3749 (98%), Gaps = 49/3749 (1%)
*  Identities = 5235/5281 (99%), Gaps = 12/5281 (0%)
*  Identities = 5930/6089 (97%), Gaps = 99/6089 (2%)
