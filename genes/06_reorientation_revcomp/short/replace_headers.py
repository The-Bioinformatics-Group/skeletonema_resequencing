fasta= open('gene_cut_performed_revcomp_oriented.fasta')
newnames= open('gene_cut_performed_toreverse.headers.fasta')
newfasta= open('sgene_cut_performed_revomp_headers.fasta', 'w')

for line in fasta:
    if line.startswith('>'):
        newname= newnames.readline()
        newfasta.write(newname)
    else:
        newfasta.write(line)

fasta.close()
newnames.close()
newfasta.close()
