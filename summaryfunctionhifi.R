#!/usr/bin/R
# Author: Gaurav Sablok
# Universitat Potsdam
# Date 2024-3-19
summary <- function(hifiinfile, coverage){
    readdf <- read.csv(hifiinfile, sep = "\t")
    return (length(readdf[readdf["coverage"] > coverage])) 
} 
# how to run the functions
# summary("ERR10930361ASM_assembly.hifi-coverage.csv", 100) 
#          -> total 4137 scaffolds with coverage more than 100. 
