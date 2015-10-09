# Workflow

### Checked md5 hashes after download
`./check_md5.sh > check_md5.log`

### Ran fastqc on all fastq files
`run_fastqc.sh`

### Download the fastqc report to local machine
`scp mtop@albiorix.bioenv.gu.se:/nobackup/data6/sylvie/Resequenced_Strains_Godhe_15_01/*/*/*_fastqc.zip .`

### Maintained \*.zip files but Remove fastqc folders after transfer to laptop [Sylvie]
`rm -r P1872_*/150723_BC6T2NANXX/*fastqc/`

### Additional cutadapt analysis
Sylvie has noticed that a number of samples contains the "Illumina Single End PCR Primer 1" that was not picked up in the firts fastqc analysis. I'm therefore running the script code/prepare\_sequences-II.sh on the following samples:

* P1872_103
* P1872_113
* P1872_115
* P1872_123
* P1872_154
* P1872_173
* P1872_403
* P1872_407
* P1872_425
* P1872_429
* P1872_431
* P1872_452
* P1872_456
* P1872_478
* P1872_479
* P1872_496
* P1872_512
* P1872_539

```bash
qsub ../../../../code/prepare_sequences-II.sh
```
