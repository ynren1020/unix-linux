for each in `ls *_sorted.bam`
do
samtools view -b $each chr**:##,###,###-##,###,### > ${each}.chr**.bam
samtools index ${each}.chr**.bam
done
