#!/bin/bash

# set the number of nodes
#SBATCH --nodes=1
#SBATCH --partition=debug
# set max wallclock time
#SBATCH --time=296:00:00

#mail alert at start,end and abortion of execution
#SBATCH --mail-type=ALL

# send mail to this address
#SBATCH --mail-user=renxx275@umn.edu

#run the application
cd $SLURM_SUBMIT_DIR
sh /usr/local/modules/profile.modules
# load modules
#module load hisat2
#module load samtools
#module load stringtie
module load subread

#1:Mapping the reads with hisat
#hisat2 -p 8 -x /home/ryang/ddn/reference_genomes/hg38/hisat2/genome -U  /home/ryang/project/k562_drug/nilo1.IN.fastq.gz | samtools view -Sbo nilo1.IN.bam -
#hisat2 -p 8 -x /home/ryang/ddn/reference_genomes/hg38/hisat2/genome -U  /home/ryang/project/k562_drug/nilo2.IN.fastq.gz | samtools view -Sbo nilo2.IN.bam -
#hisat2 -p 8 -x /home/ryang/ddn/reference_genomes/hg38/hisat2/genome -U  /home/ryang/project/k562_drug/parental1.IN.fastq.gz | samtools view -Sbo parental1.IN.bam -
#hisat2 -p 8 -x /home/ryang/ddn/reference_genomes/hg38/hisat2/genome -U  /home/ryang/project/k562_drug/parental2.IN.fastq.gz | samtools view -Sbo parental2.IN.bam -
#hisat2 -p 8 -x /home/ryang/ddn/reference_genomes/hg38/hisat2/genome -U  /home/ryang/project/k562_drug/release1.IN.fastq.gz | samtools view -Sbo release1.IN.bam -
#hisat2 -p 8 -x /home/ryang/ddn/reference_genomes/hg38/hisat2/genome -U  /home/ryang/project/k562_drug/release2.IN.fastq.gz | samtools view -Sbo release2.IN.bam -

#2: sort and index bam file
#samtools sort nilo1.IN.bam -o nilo1_IN_sorted.bam
#samtools sort nilo2.IN.bam -o nilo2_IN_sorted.bam
#samtools sort parental1.IN.bam -o parental1_IN_sorted.bam
#samtools sort parental2.IN.bam -o parental2_IN_sorted.bam
#samtools sort release1.IN.bam -o release1_IN_sorted.bam
#samtools sort release2.IN.bam -o release2_IN_sorted.bam

#samtools index nilo1_IN_sorted.bam
#samtools index nilo2_IN_sorted.bam
#samtools index parental1_IN_sorted.bam
#samtools index parental2_IN_sorted.bam
#samtools index release1_IN_sorted.bam
#samtools index release2_IN_sorted.bam
