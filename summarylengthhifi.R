#!/usr/bin/R
# Author: Gaurav Sablok
# Universitat Potsdam
# Date 2024-3-19
summarylength <- function(hifiinfile, scaffoldlength){
    readdf <- read.csv(hifiinfile, sep = "\t")
    return (length(readdf[readdf["length"] > length])) 
} 
# how to run this function and get the length filtered scaffolds
summarylength("ERR10930361ASM_assembly.hifi-coverage.csv", 5000) -> total 20505 scaffolds with coverage more than 5000bp.
