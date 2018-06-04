# rpe

We used Beagle 4.1 (downloaded Nov 2016) to perform genotype imputation and phasing. Genotypes were imputed and phased according to 1000 Genomes Project phase 3 reference panel. Before imputation and phasing, we filtered the original vcf file to only bi-allelic SNP sites on autosomes and removed sites with more than 5% missing genotypes. We also re-coded the vcf based on the reference and alternative allele designation of 1000 Genomes Project phase 3 reference panel using the conform-gt program which is provided together with the Beagle tool.


### filtering for bi-allelic SNPs
````

````


### correct strand information according to 1000 genomes phase3 vcf
````
for i in `seq 1 22`;
        do
                echo "java -jar conform-gt.24May16.cee.jar ref=../../imputation/tools/bochet.gcc.biostat.washington.edu/beagle/1000_Genomes_phase3_v5a/individual_chromosomes/chr$i.1kg.phase3.v5a.vcf.gz gt=rpe.merged.missing5e-2.autosome.biSNPs.vcf chrom=$i match=POS strict=false out=rpe.corrected_strand.chr$i"
        done 
````


### run beagle on each chromosome using 1000 genomes phase3 as reference
````
for i in `seq 1 22`;
        do
                echo "java -Xmx1024M -jar ../tools/beagle.27Jul16.86a.jar ref=../tools/bochet.gcc.biostat.washington.edu/beagle/1000_Genomes_phase3_v5a/individual_chromosomes/chr$i.1kg.phase3.v5a.vcf.gz gt=../../genotype/correct_strand/rpe.corrected_strand.chr$i.vcf.gz map=../tools/bochet.gcc.biostat.washington.edu/beagle/genetic_maps/GRCh37/plink.chr$i.GRCh37.map impute=true out=rpe.imputed.chr$i"
        done
````


S R Browning and B L Browning (2007) Rapid and accurate haplotype phasing and missing data inference for whole genome association studies by use of localized haplotype clustering. Am J Hum Genet 81:1084-1097. doi:10.1086/521987
