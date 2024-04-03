#### gaetan suggestion to get the genomeasm working on the Universitat Potsdam 
> ##### However, this will not work so i created a conda environment and pull the snakemake and the genomeasm with the singularity with in conda environment.
> ##### getting it working on the Universitat Potsdam

Clone the reporistory (git clone https://gitlab.cirad.fr/agap/workflows/genomeassembly)
- cd genomeassembly
- Edit the config.yaml for an accession (Path to fastq.gz file and reference assembly for ragtag). 
- 3 mode are available (default for an accession, trio (with mother and father raw data) or hic (but for after because Nestlé made also theses datas))
- Edit the profile/config.yaml (for Slurm parameters, partition and memory). Section default-resources and set-resources.
- And snakelike.sh (for singularity and snakemake if needed)
