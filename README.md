# genomeassembly-standards
<div align = "justify"> complete analysis and report generation for the genome assembly coming from the PacBioHifi reads for the genotypes and haplotypes and their quality assessment. This is the complete genome assembly standardization coming from the PacBioHifi reads and includes all the scripts and the analysis for the reproducibility and the visualziation and the summary analysis. </div>

#### Bolero Project Report:
- January - March, 2024
- Project Members: Prof.Dr. Zoran Nikoloski, Manuel Ruiz, Gaeten Droc, Gaurav Sablok
- Organizations: Universitat Potsdam, CIRAD (Bioinformatics)
- BOLERO Bioinformatics
- Project Member Hire and Official Project Meet: 
- Resource Setup
   > [A computing cluster with the 256GB or more RAM and multi node cluster computation at Universitat Potsdam](https://docs.hpc.uni-potsdam.de/) \
   > [A computing cluster account with 256GB or more and multi node cluster computation at MESO cluster](https://meso-lr.umontpellier.fr/documentation-utilisateurs/)
   
### Summary report
<div align = "justify"><p2>The project BOLERO started with the appointment of the postdoc Dr. Gaurav Sablok on 15th January, 2024 at the Bioinformatics Department, University of Potsdam. Upon arrival, Dr. Sablok had a Zoom discussion with Dr. Manuel Ruiz and Dr. Gaetan Droc from CIRAD, who will strongly collaborate in the context of pangenome assembly. Since data are already in sequencing phase (Nestle), Dr. Sablok started to generate the pipelines necessary for the pangenomic analysis; in addition, since metagenomics data play a central role in BOLERO, particularly in the context of metabolic model development, Dr. Sablok has also been involved in setting up the computational pipelines for genomic and metagenomics analysis. </div>. <div align = "justify"> The first code sraexplorer to explore the sra and this was needed to allow for the efficient data mining and for the comparative analysis. There are two approaches to address the pangenome: a whole genome based graph pangenome and a gene based pangenome. Dr. Sablok has finalized the establishment of the pipelines for gene based pangenome construction.<p2></p2></div>
   
<p3><div align = "justify"> For the assembly of the pangenome, we have been standardizing the approaches for the PacBioHifi  and the Oxford Nanopore data, allowing the assembly of the genomes, genome polishing and the comparative assessment of the genomes. To supplement the graph based pangenome Dr. Sablok also coded a new python package called as , which analyses all types of the graph alignments and the connections from the graph genome. Dr. Sablok started implementing the genome analysis and check the assurance of the developmental computational pipeline. </p3></div><br>Dr. Sablok has evaluated three state of the art methods for the PacBioHifi assembly such as Verkko, HifiASM, genomeASM4pg and the results are available from the respective links. Additional analysis libraries and packages that have been developed by Dr. Sablok for the analysis of the pacbiohifi reads for the genome assembly are given below and the code listing are given below:</br> 
   
- pacbio_hifi assembly: https://github.com/sablokgaurav/pacbiohifi-universitat-potsdam 
- pacbio_hifi_assembly_genome https://github.com/sablokgaurav/gawk-awk-paf-alignments 
- sra_explorer https://github.com/sablokgaurav/sra-explorer 
- pangenome_evolutionary https://github.com/sablokgaurav/pangenome-evolutionary 
- pangenome_single_copy https://github.com/sablokgaurav/pangenome-single-copy-gene 
- assembly_pangenome https://github.com/sablokgaurav/pangraphs-pacbio-nanopore-genome-assembly 
- graphanalyzer https://github.com/sablokgaurav/graphanalyzer

##### repoducibility of the project goals.
> to reproduce this pipeline, check the installation folder and there are cutom installation YAML files for each of the working environment. install the working environment and then you can reproduce the same. 

#### Genome assembly packages used for the assembly
- [hifiasm](https://github.com/chhylp123/hifiasm) 
- [Meryl](https://github.com/marbl/meryl) 
- [Merqury](https://github.com/marbl/merqury) 
- [Verkko](https://github.com/marbl/verkko)
- [genomeasm4pg](https://gitlab.cirad.fr/agap/workflows/genomeassembly)

#### Genome assembly evaluation
- [QUAST](https://github.com/ablab/quast) 
- [BUSCO](https://github.com/metashot/busco) 
- [BUSCO docker](https://gitlab.com/ezlab/busco) 
- [BUSCO Read](https://busco.ezlab.org/) 
- [Ragtag](https://github.com/malonge/RagTag) based on the nucleotide approach **New approach**
- [compleasm](https://github.com/huangnengCSU/compleasm) based on the protein approach **New approach**
- [blobtoolkit](https://github.com/blobtoolkit/blobtoolkit)
- [gci](https://github.com/yeeus/GCI) a new estimation of the PacbioHifi for the coverage and the completeness based on the read mapping approaches. **New approach**

#### Genome Analysis and Project Summary
- The project image summary for the June presentation is loated at the following links given below:
 ![Project summary](https://github.com/sablokgaurav/genomeassembly_standards/blob/main/projectupdate.png) 
- Project documentation: [Project documentation](https://github.com/sablokgaurav/genomeassembly_standards/blob/main/projectsummary.md) 
- Project parameters: [Project parameters](https://github.com/sablokgaurav/genomeassembly_standards/blob/main/projectparameters.md) 
- Genome assembly summary: [Summary evaluation](https://github.com/sablokgaurav/genomeassembly_standards/blob/main/summarystats.md) 
- Reference evaluation: [Reference evaluation](https://github.com/sablokgaurav/genomeassembly_standards/blob/main/referenceevaluation.md) 
- Installation and configuration: [Installation](https://github.com/sablokgaurav/genomeassembly_standards/blob/main/installation.md) 
- Quast reports: [quast](https://github.com/sablokgaurav/genomeassembly_standards/blob/main/quastreports.md) 
- Hic optimization: [hic](https://github.com/sablokgaurav/genomeassembly_standards/blob/main/hicdocumentation.md)

#### Files for the comparison of the genome assembly from the paper are: 

<img src="https://github.com/codeearn/genomeassembly-standards/blob/main/reading/read_count.png" alt="image" width="400" height="auto">
<img src="https://github.com/codeearn/genomeassembly-standards/blob/main/reading/assembly_quality.png" alt="image" width="400" height="auto">

**Haplotype assembly without the trio method: The last l3 means that for the same sample, the -l3 extensive purging was involved.**

| contigs | ERR10930361 | ERR10930362 | ERR10930363 | ERR10930364 | ERR10930364_l3 |
|-----------------|-----------------|-----------------|-----------------|--------------------|-------------------|
| | 1248 | 2593 | 2611 | 1640 | 312 |

#### does this work on the diplod Arabidopsis and for the comparison detailed analysis below: 
for the comparison arabidopsis data coming from the following accessions were also assembled to see that everything works well.
These are diploid samples sequenced using the PacBioHifi reads.
```
wget -nc ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR100/058/ERR10084058/ERR10084058.fastq.gz
wget -nc ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR100/057/ERR10084057/ERR10084057.fastq.gz
```

Gaurav Sablok \
Academic Staff Member \
Bioinformatics \
Institute for Biochemistry and Biology \
University of Potsdam \
Potsdam,Germany
