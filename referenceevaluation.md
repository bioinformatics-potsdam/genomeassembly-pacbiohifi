## a reference evaluation was done using the vitis vinifera genome and the code is given below: 
```
for i in $(grep href index.html | cut -f 4 -d "/" | cut -f 2 -d "=" | cut -f 1 -d ">");
        do echo wget https://ftp.ensemblgenomes.ebi.ac.uk/pub/plants/release-58/fasta/vitis_vinifera/dna/$i;
 done | sed "s/\"/g"                                                                                                                                                                                                                                                                                                                                                                    
wget https://ftp.ensemblgenomes.ebi.ac.uk/pub/plants/release-58/fasta/vitis_vinifera/dna/Vitis_vinifera.PN40024.v4.dna.chromosome.1.fa.gz
```
The corresponding files are located with in the repository and the links to the same are given below: 
[Vitis peptide files](https://github.com/sablokgaurav/genomeassembly_standards/blob/main/Vitis_vinifera.PN40024.v4.pep.all.fa.gz)
[Vitis Genome file](https://ftp.ensemblgenomes.ebi.ac.uk/pub/plants/release-58/fasta/vitis_vinifera/dna/Vitis_vinifera.PN40024.v4.dna.chromosome.1.fa.gz)

### These are totally new approaches and integrated into the assembly project for the coffee genome. 

Once the download is finished, map the assembled scaffolds to the vitis genome for checking out the mapping coverage of the assembled genome.The ragtag is located at: [Ragtag](https://github.com/malonge/RagTag)
The genome completeness is also evaluated using the compleasm [compleasm](https://github.com/huangnengCSU/compleasm)



