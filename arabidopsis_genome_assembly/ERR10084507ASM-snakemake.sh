#!/bin/sh

echo "Launching bioconda verkko bioconda 2.0"
echo "Using snakemake 7.32.4."

snakemake verkko --nocolor \
  --directory . \
  --snakefile /home/sablok/.conda/envs/verkko/lib/verkko/Snakefile \
  --configfile verkko.yml \
  --reason \
  --keep-going \
  --rerun-incomplete \
  --rerun-triggers mtime \
  --latency-wait 2 \
  --cores all \
  --resources mem_gb=64 \
  
