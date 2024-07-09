#!bin/bash 

##Exporting path variable variable for sratoolkit

export PATH=$PATH:/root/persistent/software/sratoolkit.3.0.0-ubuntu64/bin

 
##Configure sratoolkit 
vdb-config -i

##Run the sratoolkit

while read line; do 
   echo $line
done < GSE64810_control.txt

while read line; do 
  prefetch -v $line
  fasterq-dump $line -e 20
done < GSE64810_control.txt











