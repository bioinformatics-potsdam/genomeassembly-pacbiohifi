##### installation files for the genome evaluation using the compleasm and the last one is a YAML file so can be imported directly.
wget https://github.com/huangnengCSU/compleasm/releases/download/v0.2.5/compleasm-0.2.5_x64-linux.tar.bz2 \
tar -jxvf compleasm-0.2.5_x64-linux.tar.bz2 \
compleasm_kit/compleasm.py -h \
git clone https://github.com/lh3/miniprot \
cd miniprot && make \
##### YAML begins
```
name: compleasm
channels:
  - bioconda
  - defaults
dependencies:
  - _libgcc_mutex=0.1=main
  - _openmp_mutex=5.1=1_gnu
  - bzip2=1.0.8=h5eee18b_5
  - ca-certificates=2024.3.11=h06a4308_0
  - expat=2.5.0=h6a678d5_0
  - hmmer=3.3.2=h87f3376_2
  - ld_impl_linux-64=2.38=h1181459_1
  - libffi=3.4.4=h6a678d5_0
  - libgcc-ng=11.2.0=h1234567_1
  - libgomp=11.2.0=h1234567_1
  - libstdcxx-ng=11.2.0=h1234567_1
  - libuuid=1.41.5=h5eee18b_0
  - ncurses=6.4=h6a678d5_0
  - openssl=3.0.13=h7f8727e_0
  - python=3.12.2=h996f2a0_0
  - readline=8.2=h5eee18b_0
  - sqlite=3.41.2=h5eee18b_0
  - tk=8.6.12=h1ccaba5_0
  - tzdata=2024a=h04d1e81_0
  - xz=5.4.6=h5eee18b_0
  - zlib=1.2.13=h5eee18b_0
  - pip:
    - pip==23.3.1
    - sepp==0.0.0
    - setuptools==68.2.2
    - wheel==0.41.2
prefix: /home/sablok/.conda/envs/compleasm \
```
```
export PATH="WORKDIR_OF_MINPROT_INSTALLATION":$PATH \
source activate compleasm \
python3 compleasm.py run -a ERR10930361ASM.fasta -o ERR10930361ASM -l viridiplantae_odb10 \
```
#### Gaetan instructions for setting up the genomeasm4pg on the Universitat Potsdam
```
- Clone the reporistory (git clone https://gitlab.cirad.fr/agap/workflows/genomeassembly)
- cd genomeassembly
- Edit the config.yaml for an accession (Path to fastq.gz file and reference assembly for ragtag). 3 mode are available \
        (default for an accession, trio (with mother and father raw data) or hic (but for after because Nestlé made also theses datas))
- Edit the profile/config.yaml (for Slurm parameters, partition and memory). Section default-resources and set-resources.
- And snakelike.sh (for singularity and snakemake if needed)
```
