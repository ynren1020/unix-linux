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
# load the hisat2 module
#module load hisat2
module load samtools
for each in *_IN_sorted.bam
    do
   # samtools depth $each > $each.sort.coverage
     igvtools count -z 1 -w 1 -e 0 $each  $each.tdf hg38
    done
