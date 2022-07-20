# KmerCountHadoop

Jar file for Hadoop big data service I created to run on GCP.

Used the chromosome data from this source https://hgdownload.soe.ucsc.edu/goldenPath/hg38/chromosomes/

GCP uses multiple worker nodes to sort hundreds of millions(if not billions) of lines of data in a relatively short time. Roughly 5 minutes per chromosome if you set the pair count to 3.
It uses a rolling scan so for instance on a chromosome with the data TTCGGA with kmer 3, it would find TTC, TCG, CGG, GGA, and then pair accordingly.
