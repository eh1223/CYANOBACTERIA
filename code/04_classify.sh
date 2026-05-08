#!/bin/bash

## replace with the qiime2 environment youve been using 
conda activate qiime2-amplicon-2026.1

primer="16s_V4-V5"
projname="DEP_${primer}"


cp /tmp/GEN711-811_data/refdbs/ref_seqs_16S_V4-V5.qza ~/CYANOBACTERIA/refdbs
cp /tmp/GEN711-811_data/refdbs/99_otus_16S_taxonomy.qza ~/CYANOBACTERIA/refdbs
cp /tmp/GEN711-811_data/refdbs/silva_99_otus_16S_nb-classifier.qza ~/CYANOBACTERIA/refdbs

## Classify
refreads="~/CYANOBACTERIA/refdbs/ref_seqs_16S_V4-V5.qza"
reftax="~/CYANOBACTERIA/refdbs/99_otus_16S_taxonomy.qza"
sklearn="~/CYANOBACTERIA/refdbs/silva_99_otus_16S_nb-classifier.qza"


## copied from qiime2_parameters.sh
maxaccepts=10
query_cov=0.75 
perc_identity=0.75 
weak_id=0.65
threads=16

## Greg: can set threads to equal what you want, I went with threads=16 and it took about 50~ minutes to run this 
## I think the max is 24 you can set it to

qiime feature-classifier classify-hybrid-vsearch-sklearn \
  --i-query data/results/${projname}_rep-seqs.qza \
  --i-classifier ${sklearn} \
  --i-reference-reads ${refreads} \
  --i-reference-taxonomy  ${reftax} \
  --p-threads ${threads} \
  --p-query-cov ${query_cov} \
  --p-perc-identity ${perc_identity} \
  --p-maxrejects all \
  --p-maxaccepts ${maxaccepts} \
  --p-maxhits all \
  --p-min-consensus 0.51 \
  --p-confidence 0.7 \
  --o-classification data/results/${projname}_hybrid_taxonomy

