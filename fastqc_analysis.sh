#!bin/bash 

##Exporting path variable variable for sratoolkit

export PATH=$PATH:/root/persistent/software/FastQC/:/root/persistent/software/jre1.8.0_361/bin

##java version check
java -version

 
##make fastqc execultable
chmod 755 fastqc

fastqc -help
##Run the fastqc

fastqc /root/persistent/software/sratoolkit.3.0.0-ubuntu64/huntington_data/additional_sample_files/*.fastq \
    -o /root/persistent/software/sratoolkit.3.0.0-ubuntu64/huntington_data/additional_sample_files/fastqc-output/
