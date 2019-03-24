#!/bin/bash

#for i in 20 21 22 23 24 33 34
#do
#( samtools view CS+_2_LIB18613_LDI16228_MappedOn_wheat_v1.0_both_${i}nt_sort.bam \
#  | cut -f 1 | wc -l > CS+_2_LIB18613_LDI16228_MappedOn_wheat_v1.0_both_${i}nt_sort_reads.txt ) &
#done
#wait

samtools view CS+_2_LIB18613_LDI16228_MappedOn_wheat_v1.0_both_sort.bam \
  | cut -f 1 | wc -l > CS+_2_LIB18613_LDI16228_MappedOn_wheat_v1.0_both_sort_reads.txt
