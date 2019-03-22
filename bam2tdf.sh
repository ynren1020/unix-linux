for each in `ls *_sorted.bam`
do
samtools view -b $each chr15:98,646,539-98,966,530 > ${each}.igf1r.bam
samtools index ${each}.igf1r.bam
/home/yang4414/yang4414/software/IGVTools/igvtools count -z 1 -w 1 -e 0 ${each}.igf1r.bam ${each}.igf1r.tdf hg38
done
