#!/usr/bin/env bash
SRR_ID=$1
##delete .sra
#SRR_ID=${SRR%.*}
# module load hisat2

hisat2 --rg ID:${SRR_ID} --rg SM:${SRR_ID} --rg PL:ILLUMINA --rg LB:lib --rg PU:${SRR_ID} -p 8 -x /panfs/roc/risdb/genomes/Homo_sapiens/hg38/hisat2/genome -1 ./${SRR_ID}_1.fastq -2 ./${SRR_ID}_2.fastq | samtools view -Sbo -| samtools sort -o ${SRR_ID}_sorted.bam
samtools index ${SRR_ID}_sorted.bam
