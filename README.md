# genomeassembly_standards
a complete workflow and the report generation for the genome assembly coming from the PacBioHifi reads for the genotypes and haplotypes and their quality assessment. This is the complete genome assembly standardization coming from the PacBioHifi reads and includes all the scripts and the analysis for the reproducibility and the visualziation and the summary analysis. I continue to update this, so that when there is an update, simply fork this and an update is autoclone in your github profile. This will save us a lot of time and also the email exchange and tracking all those. This also includes the shipping of the code to the hpc clusters and everything. I will later think of adding the Github actions to make it directly send to the clusters. 

The project summary is present in the ```projectsummary.md```. It is a markdown document and easily editable. If you want then i can convert this into the Tex for the writeup. If you want then i can write the project summary here also but it will look dirty.

# Bolero Project Report:
## January - March, 2024
### Project Members: Prof.Dr. Zoran Nikoloski, Manuel Ruiz, Gaeten Droc, Gaurav Sablok
#### Organizations: Universitat Potsdam, CIRAD ( Bioinformatics )
##### BOLERO Bioinformatics
###### Project Member Hire and Official Project Meet: 
###### Resource Setup
   -> [A computing cluster with the 256GB or more RAM and multi node cluster computation at Universitat Potsdam](https://docs.hpc.uni-potsdam.de/) \
   -> [A computing cluster account with 256GB or more and multi node cluster computation at MESO cluster](https://meso-lr.umontpellier.fr/documentation-utilisateurs/)
   
# Summary report
The project BOLERO started with the appointment of the postdoc Dr. Gaurav Sablok on 15th January, 2024 at the Bioinformatics Department, University of Potsdam. Upon arrival, Dr. Sablok had a Zoom discussion with Dr. Manuel Ruiz and Dr. Gaetan Droc from CIRAD, who will strongly collaborate in the context of pangenome assembly. Since data are already in sequencing phase (Nestle), Dr. Sablok started to generate the pipelines necessary for the pangenomic analysis; in addition, since metagenomics data play a central role in BOLERO, particularly in the context of metabolic model development, Dr. Sablok has also been involved in setting up the computational pipelines for metagenomics analysis. The complete pipeline for analysis of the genomes and the pangenome is in the process of generation following complete layout for the project BOLERO. The latter is available for the visualization and all of the code are the final release version, tested with a datasets from CIRAD. The first code: [sra_explorer](https://github.com/sablokgaurav/genome_pangenome_sra-explorer) uses a regular expression and a native brace expression to explore the sra and this was needed to allow for the efficient data mining and for the comparative analysis. 

There are two approaches to address the pangenome: a whole genome based graph pangenome and a gene based pangenome. Dr. Sablok has finalized the establishment of the pipelines for gene based pangenome construction and the corresponding code are: [pangenome_evolutionary_analysis](https://github.com/sablokgaurav/pangenome_evolutionary_analysis) and [pangenome_single_copy_gene_analysis](https://github.com/sablokgaurav/pangenome_single_copy_gene_analysis). To supplement these developments, Dr. Sablok developed tools for visualization of the pangenomes and a standalone streamlit web application [streamlit application](https://github.com/sablokgaurav/pangenome_visualization_utilities). For the assembly of the pangenome, we have been standardizing the approaches for the PacBioHifi  and the Oxford Nanopore data, [assembly_pangenome](https://github.com/sablokgaurav/pangraphs_pacbio_nanopore_genome_assembly), allowing the assembly of the genomes, genome polishing and the comparative assessment of the genomes. To supplement the graph based pangenome Dr. Sablok also coded a new python package called as graphanalyzer: [graphanalyzer](https://github.com/sablokgaurav/graphanalyzer), which analyses all types of the graph alignments and the connections from the graph genome. 

Dr. Sablok started implementing the genome analysis and finished the first analysis for the PacbIo hifi reads [pacbiohifi_assembly](https://github.com/sablokgaurav/pacbiohifi_universitat_potsdam) coming from a sample datasets to integrate and check the assurance of the developmental computational pipeline. Dr. Sablok has evaluated three state of the art methods for the PacBioHifi assembly such as Verkko, HifiASM, genomeASM4pg and the results from the Verkko for one of the indiviual is given below. Additional analysis libraries and packages that have been developed by Dr. Sablok for the analysis of the pacbiohifi reads for the genome assembly are given below:

Package 1. [pacbio_hifi assembly](https://github.com/sablokgaurav/pacbiohifi_universitat_potsdam) \
Package 2. [pacbio_hifi_assembly_genome](https://github.com/sablokgaurav/gawk_awk_paf_aligned_genome_fractions)

### Genome assembly packages used for the assembly
[hifiasm](https://github.com/chhylp123/hifiasm) \
[Meryl](https://github.com/marbl/meryl) \
[Merqury](https://github.com/marbl/merqury) \
[Verkko](https://github.com/marbl/verkko) \
#### Gaetan and Manuel this is a new ahplotype assembler and let me know if we want to try this out.
[HAST assembler](https://github.com/BGI-Qingdao/HAST) 

### Genome assembly evaluation
[QUAST](https://github.com/ablab/quast) \
[BUSCO](https://github.com/metashot/busco) \
[BUSCO docker](https://gitlab.com/ezlab/busco) \
[BUSCO Read](https://busco.ezlab.org/) \
[Lastz chain alignments](https://github.com/lastz/lastz/tree/master)

### Reference genome based evaluation
[Ragtag](https://github.com/malonge/RagTag) based on the nucleotide approach \
[compleasm](https://github.com/huangnengCSU/compleasm) based on the protein approach

### Additional new approaches integrated into the assembly project for the coffee genome.  

Once the download is finished, map the assembled scaffolds to the vitis genome for checking out the mapping coverage of the assembled genome.The ragtag is located at: [Ragtag](https://github.com/malonge/RagTag)
The genome completeness is also evaluated using the compleasm [compleasm](https://github.com/huangnengCSU/compleasm)

### Genome Analysis and Project Summary

The project image summary for the June presentation is loated at and by that time, i aim to establish the genome annotation with the complete hint generation. and will build the RUST client application.\ 

![Project summary](https://github.com/sablokgaurav/genomeassembly_standards/blob/main/projectupdate.png) 

The entire project documentation is located at [Project documentation](https://github.com/sablokgaurav/genomeassembly_standards/blob/main/projectsummary.md) \
The entire project parameters are located at [Project parameters](https://github.com/sablokgaurav/genomeassembly_standards/blob/main/projectparameters.md) \
The summary evaluation for the genome assembly are located at: [Summary evaluation](https://github.com/sablokgaurav/genomeassembly_standards/blob/main/summarystats.md) \
The reference evaluation approaches are present at: [Reference evaluation](https://github.com/sablokgaurav/genomeassembly_standards/blob/main/referenceevaluation.md) \
All the installation and the configuration files are located at: [Installation](https://github.com/sablokgaurav/genomeassembly_standards/blob/main/installation.md)


### Meeting scheduled for June 2024 

Gaurav Sablok \
Academic Staff Member \
Bioinformatics \
Institute for Biochemistry and Biology \
University of Potsdam \
Potsdam,Germany
