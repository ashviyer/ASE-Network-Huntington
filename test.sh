#!bin/bash 

##Exporting path variable variable for sratoolkit

export PATH=$PATH:/root/persistent/software/STAR/source

paste -d@ GSE64810_first.txt GSE64810_second.txt outputfilename.txt | while IFS="@" read -r f1 f2 f3
do
  printf 'f1: %s\n' "$f1"
  printf 'f2: %s\n' "$f2"
  printf 'f3: %s\n' "$f3"
STAR --runMode alignReads\
 	--genomeDir /root/persistent/data/reference/GenomeDir/ \
	--outSAMtype BAM SortedByCoordinate \
	--readFilesIn /root/persistent/software/sratoolkit.3.0.0-ubuntu64/huntington_data/GSE64810/$f1 \
	/root/persistent/software/sratoolkit.3.0.0-ubuntu64/huntington_data/GSE64810/$f2 \
	--outFileNamePrefix /root/persistent/data/huntington/GSE64810/$f3 \
	--twopassMode Basic \
	--runThreadN 50
done
