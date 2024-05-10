# Bolero Project Report:
## March, 2024
### Project Members: Prof.Dr. Zoran Nikoloski, Manuel Ruiz, Gaeten Droc, Gaurav Sablok
#### Organizations: Universitat Potsdam, CIRAD ( Bioinformatics )
##### BOLERO Bioinformatics
###### Project Member Hire and Official Project Meet: 
###### Resource Setup
   -> A computing cluster with the 256GB or more RAM and multi node cluster computation at Universitat Potsdam \
   -> A computing cluster account with 256GB or more and multi node cluster computation at MESO cluster.

<div align = "justify">
# Summary report
The project BOLERO started with the appointment of the postdoc Dr. Gaurav Sablok on 15th January, 2024 at the Bioinformatics Department, University of Potsdam. Upon arrival, Dr. Sablok had a Zoom discussion with Dr. Manuel Ruiz and Dr. Gaetan Droc from CIRAD, who will strongly collaborate in the context of pangenome assembly. Since data are already in sequencing phase (Nestle), Dr. Sablok started to generate the pipelines necessary for the pangenomic analysis; in addition, since metagenomics data play a central role in BOLERO, particularly in the context of metabolic model development, Dr. Sablok has also been involved in setting up the computational pipelines for metagenomics analysis. The complete pipeline for analysis of the genomes and the pangenome is in the process of generation following complete layout for the project BOLERO. The latter is available for the visualization and all of the code are the final release version, tested with a datasets from CIRAD. The first code: [sra_explorer](https://github.com/sablokgaurav/genome_pangenome_sra-explorer) uses a regular expression and a native brace expression to explore the sra and this was needed to allow for the efficient data mining and for the comparative analysis. 

Dr. Sablok started implementing the genome analysis and finished the first analysis for the PacbIo hifi reads [pacbiohifi_assembly](https://github.com/sablokgaurav/pacbiohifi_universitat_potsdam) coming from a sample datasets to integrate and check the assurance of the developmental computational pipeline. Dr. Sablok has evaluated three state of the art methods for the PacBioHifi assembly such as Verkko, HifiASM, genomeASM4pg and the results from the Verkko for one of the indiviual is given below. Additional analysis libraries and packages that have been developed by Dr. Sablok for the analysis of the pacbiohifi reads for the genome assembly are given below:

Package 1. [pacbio_hifi assembly](https://github.com/sablokgaurav/pacbiohifi_universitat_potsdam) \
Package 2. [pacbio_hifi_assembly_genome](https://github.com/sablokgaurav/gawk_awk_paf_aligned_genome_fractions) 

- pacbio_hifi assembly: https://github.com/gauravcodepro/pacbiohifi-universitat-potsdam 
- pacbio_hifi_assembly_genome https://github.com/gauravcodepro/gawk-awk-paf-alignments 
- sra_explorer https://github.com/gauravcodepro/sra-explorer 
- pangenome_evolutionary https://github.com/gauravcodepro/pangenome-evolutionary 
- pangenome_single_copy https://github.com/gauravcodepro/pangenome-single-copy-gene 
- assembly_pangenome https://github.com/gauravcodepro/pangraphs-pacbio-nanopore-genome-assembly 
- graphanalyzer https://github.com/gauravcodepro/graphanalyzer
- pacbiohifianalyzer https://github.com/gauravcodepro/pacbiohifi-analyzer

# Meeting scheduled for June 2024 
