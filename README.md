# rpe

We used Beagle 4.1 (downloaded Nov 2016) to perform genotype imputation and phasing. Genotypes were imputed and phased according to 1000 Genomes Project phase 3 reference panel. Before imputation and phasing, we filtered the original vcf file to only bi-allelic SNP sites on autosomes and removed sites with more than 5% missing genotypes. We also re-coded the vcf based on the reference and alternative allele designation of 1000 Genomes Project phase 3 reference panel using the conform-gt program which is provided together with the Beagle tool.


S R Browning and B L Browning (2007) Rapid and accurate haplotype phasing and missing data inference for whole genome association studies by use of localized haplotype clustering. Am J Hum Genet 81:1084-1097. doi:10.1086/521987
