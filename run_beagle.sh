


for i in `seq 1 22`;
        do
                echo "java -Xmx1024M -jar ../tools/beagle.27Jul16.86a.jar ref=../tools/bochet.gcc.biostat.washington.edu/beagle/1000_Genomes_phase3_v5a/individual_chromosomes/chr$i.1kg.phase3.v5a.vcf.gz gt=../../genotype/correct_strand/rpe.corrected_strand.chr$i.vcf.gz map=../tools/bochet.gcc.biostat.washington.edu/beagle/genetic_maps/GRCh37/plink.chr$i.GRCh37.map impute=true out=rpe.imputed.chr$i"
        done



