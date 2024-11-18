gunzip GCF_000001405.40_GRCh38.p14_genomic.gtf.gz
grep 'protein_coding' GCF_000001405.40_GRCh38.p14_genomic.gtf | tr ";" "\n"  > protein_coding_genes.gtf
grep 'gene_id' protein_coding_genes.gtf | awk '{print $10}' |sort  > gene_id.gtf
uniq gene_id.gtf > unique_gene_id.gtf
wc -l unique_gene_id.gtf
