#!/usr/bin/env bash
echo "downloading..."


wget https://hgdownload.soe.ucsc.edu/goldenPath/hg38/chromosomes/chr{1..22}.fa.gz
wget https://hgdownload.soe.ucsc.edu/goldenPath/hg38/chromosomes/chr{X,Y}.fa.gz

gzip -dk chr*.fa.gz

mkdir compressed
mv chr*.fa.gz compressed
