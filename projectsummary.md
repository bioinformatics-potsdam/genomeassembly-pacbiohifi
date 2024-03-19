# Bolero Project Report:
# March, 2024
# Project Members: Prof.Dr. Zoran Nikoloski, Manuel Ruiz, Gaeten Droc, Gaurav Sablok
# Organizations: Universitat Potsdam, CIRAD ( Bioinformatics )
# BOLERO Bioinformatics
# Project Member Hire and Official Project Meet: 
# Resource Setup
   # A computing cluster with the 256GB or more RAM and multi node cluster computation at Universitat Potsdam
   # A computing cluster account with 256GB or more and multi node cluster computation at MESO cluster.
  
The project BOLERO started with the appointment of the postdoc Dr. Gaurav Sablok on 15th January, 2024 at the Bioinformatics Department, University of Potsdam. Upon arrival, Dr. Sablok had a Zoom discussion with Dr. Manuel Ruiz and Dr. Gaetan Droc from CIRAD, who will strongly collaborate in the context of pangenome assembly. Since data are already in sequencing phase (Nestle), Dr. Sablok started to generate the pipelines necessary for the pangenomic analysis; in addition, since metagenomics data play a central role in BOLERO, particularly in the context of metabolic model development, Dr. Sablok has also been involved in setting up the computational pipelines for metagenomics analysis. The complete pipeline for analysis of the genomes and the pangenome is in the process of generation following complete layout for the project BOLERO. The latter is available for the visualization and all of the code are the final release version, tested with a datasets from CIRAD. The first code: [sra_explorer](https://github.com/sablokgaurav/genome_pangenome_sra-explorer) uses a regular expression and a native brace expression to explore the sra and this was needed to allow for the efficient data mining and for the comparative analysis. 

There are two approaches to address the pangenome: a whole genome based graph pangenome and a gene based pangenome. Dr. Sablok has finalized the establishment of the pipelines for gene based pangenome construction and the corresponding code are: [pangenome_evolutionary_analysis](https://github.com/sablokgaurav/pangenome_evolutionary_analysis) and [pangenome_single_copy_gene_analysis](https://github.com/sablokgaurav/pangenome_single_copy_gene_analysis). To supplement these developments, Dr. Sablok developed tools for visualization of the pangenomes and a standalone streamlit web application [streamlit application](https://github.com/sablokgaurav/pangenome_visualization_utilities). For the assembly of the pangenome, we have been standardizing the approaches for the PacBioHifi  and the Oxford Nanopore data, [assembly_pangenome](https://github.com/sablokgaurav/pangraphs_pacbio_nanopore_genome_assembly), allowing the assembly of the genomes, genome polishing and the comparative assessment of the genomes. To supplement the graph based pangenome Dr. Sablok also coded a new python package called as graphanalyzer: [graphanalyzer](https://github.com/sablokgaurav/graphanalyzer), which analyses all types of the graph alignments and the connections from the graph genome. 

Dr. Sablok started implementing the genome analysis and finished the first analysis for the PacbIo hifi reads [pacbiohifi_assembly](https://github.com/sablokgaurav/pacbiohifi_universitat_potsdam) coming from a sample datasets to integrate and check the assurance of the developmental computational pipeline. Dr. Sablok has evaluated three state of the art methods for the PacBioHifi assembly such as Verkko, HifiASM, genomeASM4pg and the results from the Verkko for one of the indiviual is given below. Additional analysis libraries and packages that have been developed by Dr. Sablok for the analysis of the pacbiohifi reads for the genome assembly are given below:

[pacbio_hifi assembly](https://github.com/sablokgaurav/pacbiohifi_universitat_potsdam) \
[pacbio_hifi_assembly_genome](https://github.com/sablokgaurav/gawk_awk_paf_aligned_genome_fractions)

# Meeting scheduled for June 2024 
