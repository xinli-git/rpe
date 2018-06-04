

# conform-gt 
# requires ALT specification, polymorphic sites only
# cannot work on indels
# cannot have duplicate lines
# cannot be used on current rpe vcf
# java -jar conform-gt.24May16.cee.jar ref=chr22.1kg.ref.phase1_release_v3.20101123.vcf.gz gt=rpe.merged.missing5e-2.autosome.vcf chrom=22 strict=false out=tmp

# filter to only polymorphic snp sites, biallelic only
# vcftools --vcf rpe.merged.missing5e-2.autosome.vcf --min-alleles 2 --max-alleles 2 --recode --stdout | awk '$4 ~ /[ATCG]/ || $1 ~ /#/' | awk 'BEGIN{pos=0; rs=0} ($2 == pos) {} (($2 != pos && $3 != rs)|| $1 ~ /#/) {print; pos = $2; rs = $3}' 
# ##e#### vcf-merge --remove-duplicates --collapse any rpe.merged.missing5e-2.autosome.biSNPs.vcf.gz


# match by POS
# do not match by rsID, illumina2.5M kgpID is no longer used in 1tg
# strict=false, do not guess strand using allele frequency, determine by REF/ALT allele only
for i in `seq 1 22`;
        do
                echo "java -jar conform-gt.24May16.cee.jar ref=../../imputation/tools/bochet.gcc.biostat.washington.edu/beagle/1000_Genomes_phase3_v5a/individual_chromosomes/chr$i.1kg.phase3.v5a.vcf.gz gt=rpe.merged.missing5e-2.autosome.biSNPs.vcf chrom=$i match=POS strict=false out=rpe.corrected_strand.chr$i"
        done 




