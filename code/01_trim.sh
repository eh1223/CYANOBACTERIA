conda activate genomics

cd ~/CYANOBACTERIA

mkdir /poly-G-trimmed /html /metadata

cd data/fastqs

polyg_len=200

chmod +x../code/polyGfilter.sh
../codepolyGfilter.sh ${polyg_len} --> can also use number in brackets if not want to deal with variable

in four loop:
-l ${1} = any number can be in brackets