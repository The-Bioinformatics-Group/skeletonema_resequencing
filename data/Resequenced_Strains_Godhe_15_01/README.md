# Workflow

### Checked md5 hashes after download
`./check_md5.sh > check_md5.log`

### Ran fastqc on all fastq files
`run_fastqc.sh`

### Download the fastqc report to local machine
`scp mtop@albiorix.bioenv.gu.se:/nobackup/data6/sylvie/Resequenced_Strains_Godhe_15_01/*/*/*_fastqc.zip .`

### Maintain .zip but Remove fastqc folders after transfer to laptop
`rm -r P1872_*/150723_BC6T2NANXX/*fastqc/`
