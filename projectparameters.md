## This file contains the project parameter that were used to standardize the assembly. Below you will find the detail information for the running of the assembly. The ones with the --paration=all are for the Universitat Potsdam server and the ones without the same are for the MESO cluster. 

### downloading the data for the assembly from the NCBI archive
```
#!/bin/sh
#SBATCH -J=assembly
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks-per-core=1
#SBATCH --partition=agap_normal
#SBATCH --mail-user=sablokg@gmail.com
module load verkko/2.0-singularity
cd /home/sablokg/scratch/grapevineassemblies
wget -nc http://ftp.sra.ebi.ac.uk/vol1/fastq/ERR109/062/ERR10930362/ERR10930362.fastq.gz -O ERR10930362.fastq.gz
wget -nc http://ftp.sra.ebi.ac.uk/vol1/fastq/ERR109/061/ERR10930361/ERR10930361.fastq.gz -O ERR10930361.fastq.gz
wget -nc http://ftp.sra.ebi.ac.uk/vol1/fastq/ERR109/064/ERR10930364/ERR10930364.fastq.gz -O ERR10930364.fastq.gz
wget -nc http://ftp.sra.ebi.ac.uk/vol1/fastq/ERR109/063/ERR10930363/ERR10930363.fastq.gz -O ERR10930363.fastq.gz
mkdir fastqfiles
cp -r *.gz ./fastqfiles
cd fastqfiles
for i in *.fastq.gz; do gunzip $i; done
```
### invoking the singularity maternal and the parental assembly using the hifiasm
```
#!/bin/bash
#SBATCH -J=hifiassembly
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks-per-core=1
#SBATCH --partition=agap_bigmem
#SBATCH --mail-user=sablokg@gmail.com
#SBATCH --mem=256G
#SBATCH --mail-type=ALL
#SBATCH --output=slurm-%j.out
cd /home/sablokg/scratch/grapevineassemblies/hifiasmparental
module load bioinfo-cirad
module load bioinfo-ifb
module load hifiasm/0.15.1
export PATH=/home/sablokg/scratch/grapevineassemblies/hifiasmparental/yak:$PATH
echo $PATH
yak count -k 31 -t 32 -o parental.yak /home/sablokg/scratch/grapevineassemblies/verkkoassemblyparental/ERR10930361.fastq.gz
yak count -k 31 -t 32 -o maternal.yak /home/sablokg/scratch/grapevineassemblies/verkkoassemblyparental/ERR10930362.fastq.gz
hifiasm -o maternalpaternal.asm -t 32 -1 parental.yak -2 maternal.yak /home/sablokg/scratch/grapevineassemblies/verkkoassemblyparental/*.fastq.gz 2> maternalpaternal.log
```
### invoking the maternal and the parental assembly using the verkko assembler
```
#!/bin/bash
#SBATCH -J=assembly
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks-per-core=1
#SBATCH --partition=agap_bigmem
#SBATCH --mail-user=sablokg@gmail.com
#SBATCH --mem=256G
#SBATCH --mail-type=ALL
#SBATCH --output=slurm-%j.out
cd /home/sablokg/scratch/grapevineassemblies/verkkoassemblyparental
module load bioinfo-cirad 
module load bioinfo-ifb
module load verkko/2.0-conda
module load java/jdk-17.0.6
export PATH=/home/sablokg/scratch/grapevineassemblies/verkkoassemblyparental/meryl-1.4.1/bin:$PATH
export MERQURY=/home/sablokg/scratch/grapevineassemblies/verkkoassemblyparental/merqury
source $MERQURY/util/util.sh
echo $PATH
parental=/home/sablokg/scratch/grapevineassemblies/verkkoassemblyparental/ERR10930361.fastq.gz
maternal=/home/sablokg/scratch/grapevineassemblies/verkkoassemblyparental/ERR10930362.fastq.gz
echo "verkko running"
meryl count compress k=30 threads=32 memory=128 $parental output ERR10930361.meryl
meryl count compress k=30 threads=32 memory=128 $maternal output ERR10930362.meryl
$MERQURY/trio/hapmers.sh ERR10930361.meryl ERR10930362.meryl
verkko -d ERR61ERR62ERR63 --hifi /home/sablokg/scratch/grapevineassemblies/verkkoassemblyparental/*.fastq.gz --hap-kmers ERR10930361.meryl ERR10930362.meryl trio
```
### invoking the indivual haplotype assembly using the hifiasm assembly parameters
```
#!/bin/bash
#SBATCH --partition=all
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=60G
#SBATCH --time=5-00:00
#SBATCH --chdir=/work/sablok/grapevineassemblies/assemblyhifiasm
#SBATCH --mail-type=ALL
#SBATCH --output=slurm-%j.out
export PATH=/work/sablok/grapevineassemblies/meryl/build/bin/meryl:$PATH
export PATH=/work/sablok/grapevineassemblies/assemblyhifiasm/hifiasm:$PATH
echo $PATH
#/work/sablok/grapevineassemblies/fastq/ERR10930361.fastq
#/work/sablok/grapevineassemblies/fastq/ERR10930362.fastq
#/work/sablok/grapevineassemblies/fastq/ERR10930363.fastq
#/work/sablok/grapevineassemblies/fastq/ERR10930364.fastq
hifiasm -o ERR10930361.asm -l0 /work/sablok/grapevineassemblies/fastq/ERR10930361.fastq 2> ERR10930361.log
hifiasm -o ERR10930362.asm -l0 /work/sablok/grapevineassemblies/fastq/ERR10930362.fastq 2> ERR10930362.log
hifiasm -o ERR10930363.asm -l0 /work/sablok/grapevineassemblies/fastq/ERR10930363.fastq 2> ERR10930363.log
hifiasm -o ERR10930364.asm -l0 /work/sablok/grapevineassemblies/fastq/ERR10930364.fastq 2> ERR10930364.log
```
### invoking the indivual haplotype assembly using the verkko assembly parameters
```
#!/bin/bash
#SBATCH --partition=all
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=256G
#SBATCH --time=5-00:00
#SBATCH --chdir=/work/sablok/grapevineassemblies/assembly
#SBATCH --mail-type=ALL
#SBATCH --output=slurm-%j.out
module load lang/Anaconda3/2021.05
source activate verkko
readsfile
# assemblye finish checker
# if [[ $(grep "100%" *.out | wc -l) ]]; then echo "all assemblies finished"; fi
#/work/sablok/grapevineassemblies/fastq/ERR10930361.fastq
#/work/sablok/grapevineassemblies/fastq/ERR10930362.fastq
#/work/sablok/grapevineassemblies/fastq/ERR10930363.fastq
#/work/sablok/grapevineassemblies/fastq/ERR10930364.fastq
echo "verkko running"
verkko -d ERR10930361ASM --hifi /work/sablok/grapevineassemblies/fastq/ERR10930361.fastq
verkko -d ERR10930362ASM --hifi /work/sablok/grapevineassemblies/fastq/ERR10930362.fastq
verkko -d ERR10930363ASM --hifi /work/sablok/grapevineassemblies/fastq/ERR10930363.fastq
verkko -d ERR10930364ASM --hifi /work/sablok/grapevineassemblies/fastq/ERR10930364.fastq
```
### busco evaluation of the assemblies
```
#!/bin/bash
#SBATCH --partition=all
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --mem=50G
#SBATCH --time=1-00:00
#SBATCH --chdir=/work/sablok/grapevineassemblies/busco_evaluation/assembly_eval
#SBATCH --mail-type=ALL
#SBATCH --output=slurm-%j.out
module load bio/BUSCO/5.1.2-foss-2020b
#busco -i ERR10930361ASM.verkko.fasta -l viridiplantae_odb10 -c 32 -o ERR10930361ASM.busco -m geno
busco -i ERR10930361ASM.fasta -l viridiplantae_odb10 -c 32 -o ERR10930361ASM.busco -m geno
busco -i ERR10930362ASM.fasta -l viridiplantae_odb10 -c 32 -o ERR10930362ASM.busco -m geno
busco -i ERR10930363ASM.fasta -l viridiplantae_odb10 -c 32 -o ERR10930363ASM.busco -m geno
busco -i ERR10930364ASM.fasta -l viridiplantae_odb10 -c 32 -o ERR10930364ASM.busco -m geno
```
