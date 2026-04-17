conda activate genomics

cd ~/CYANOBACTERIA

mkdir /poly-G-trimmed /html /metadata

cd data/fastqs

polyg_len=200

chmod +x../code/polyGfilter.sh
../codepolyGfilter.sh ${polyg_len} --> can also use number in brackets if not want to deal with variable

in four loop:
-l ${1} = any number can be in brackets

## START HERE
#!/bin/bash
conda activate genomics

cd ~/CYANOBACTERIA

polyg_len=200 ## copied from qiime2_parameters.sh

### Run polyG filter. This will remove polyG tails and also filter out reads that are too short after trimming.
chmod +x code/polyGfilter.sh

### This is the same as..
code/polyGfilter.sh ${polyg_len}
### this
code/polyGfilter.sh 200 

## Remove empty files before qiime import
find data/poly-G-trimmed/ -size 0 -print -delete

## Proceed to 02_cutadapt.sh