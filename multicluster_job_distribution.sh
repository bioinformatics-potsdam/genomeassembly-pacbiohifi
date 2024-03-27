#!/usr/bin/bash 
# an entire workflow for the running of the high throughput cluster on the analysis of the genomes
# coming from the pacbiohifi using the verkko, hifiasm, genomeasm4pg using the indiviual as well as the trio binning method. 
# below is a complete slurm configuration for the same
# Author Gaurav Sablok
# Universitat Potsdam
# Date: 2024-3-27

                echo "writing multi cluster job submission for the hifiasm and verkko"
multicluster () {
    while IFS="\n"; 
    readdir=$1
    scratchdir=$2
    command=$3
    
    
}