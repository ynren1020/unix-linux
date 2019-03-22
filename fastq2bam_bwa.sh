for each in `cat xaa`
do
bwa mem -t 8 /panfs/roc/risdb/genomes/Homo_sapiens/hg38/bwa/hg38.fa  ${each}.fastq | samtools view -Sb - | samtools sort -o ${each}_sorted.bam
samtools index ${each}_sorted.bam
done
