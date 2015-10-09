# Introduction
One run of trimming and filtering has been preformed. Cutadapt was set to remove adaptors identified by the initial preqc analysis of the raw data. However, the final preqc analysis identified aditional overepresented sequences ("Illumina Single End PCR Primer 1") not found in the first analysis. I'm trying to remove them using the following command:

```bash
cutadapt -b "GCGTCGTGTAGGGAAAGAGTGTAGGCTATAGTGTAGATCTCGGTGGTCGCCGTATCATTAAAAAAAAAA" -q 15 -O 10 -e 0.1 -n 1 -m 50 -o cutadapt_test.fastq 2_150723_BC6T2NANXX_P1872_103_2.FXT.CA.FQF.fastq > cutadapt_test.err.txt
```
