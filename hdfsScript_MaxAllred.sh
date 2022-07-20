#!/usr/bin/env bash
export PATH=${JAVA_HOME}/bin:${PATH}
export HADOOP_CLASSPATH=${JAVE_HOME}/lib/tools.jar
echo $HADOOP_CLASSPATH
hadoop com.sun.tools.javac.Main KmerCount.java CustomRecordReader.java CustomInputFormat.java
jar cvf wc.jar KmerCount*.class CustomRecordReader*.class CustomInputFormat*.class
hadoop fs -mkdir input
hadoop fs -put chr1.fa input
hadoop fs -put chr2.fa input
hadoop fs -put chr3.fa input
hadoop fs -put chr4.fa input
hadoop fs -put chr5.fa input
hadoop fs -put chr6.fa input
hadoop fs -put chr7.fa input
hadoop fs -put chr8.fa input
hadoop fs -put chr9.fa input
hadoop fs -put chr10.fa input
hadoop fs -put chr11.fa input
hadoop fs -put chr12.fa input
hadoop fs -put chr13.fa input
hadoop fs -put chr14.fa input
hadoop fs -put chr15.fa input
hadoop fs -put chr16.fa input
hadoop fs -put chr17.fa input
hadoop fs -put chr18.fa input
hadoop fs -put chr19.fa input
hadoop fs -put chr20.fa input
hadoop fs -put chr21.fa input
hadoop fs -put chr22.fa input
hadoop fs -put chrY.fa input
hadoop fs -put chrX.fa input

hadoop fs -rm output/_SUCCESS
hadoop fs -rm output/part-r-00000
hadoop fs -mkdir output
hadoop fs -mkdir output/kmer1
hadoop fs -mkdir output/kmer5
hadoop fs -mkdir output/kmer10
hadoop fs -mkdir output/kmer15
hadoop fs -mkdir output/kmer20
hadoop jar wc.jar KmerCount input output/kmer1 1
hadoop fs -cat output/kmer1/* | sort -rn -k2 | head -25
hadoop jar wc.jar KmerCount input output/kmer5 5
hadoop fs -cat output/kmer5/* | sort -rn -k2 | head -25
hadoop jar wc.jar KmerCount input output/kmer10 10
hadoop fs -cat output/kmer10/* | sort -rn -k2 | head -25
hadoop jar wc.jar KmerCount input output/kmer15 15
hadoop fs -cat output/kmer15/* | sort -rn -k2 | head -25
hadoop jar wc.jar KmerCount input output/kmer20 20
hadoop fs -cat output/kmer20/* | sort -rn -k2 | head -25


