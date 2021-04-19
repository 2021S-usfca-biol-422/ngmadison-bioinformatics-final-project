# Analyzing Qatari SARS-CoV-2 Genomic Sequence Data

Madison Ng
mtng2@dons.usfca.edu

The goal of this project is to analyze sequence data for SARS-CoV-2 from 
Qatar, a country comparable to the size of a US city or small US state, and 
present findings in a well-organized report. I am interested in tracking 
spread in terms of when the pandemic first reached Qatar's shores and seeing 
how the virus has changed since then. I'd also like to look at surges in 
connection with possible variants and looking for the presence of variants at 
all. Identifying differences in Qatari sequence data with that of reference 
genome data for SARS-CoV-2 will be important.

Data sourced from the NCBI SAR-CoV-2 BioProject Database.
SRA BioProject ID: PRJNA707370

Parts of this pipeline approach are based on the pipeline described in the [Data Carpentry Genomics lessons](https://datacarpentry.org/genomics-workshop/), which are made available under a [CC-BY 4.0 license](https://creativecommons.org/licenses/by/4.0/).

# Theorized General Workflow
* Update README.
* Remind self to commit often.
* Use fasterq-dump to download raw Illumina fastq data.
* Use fastq c to quality check sequence data prior to beginning work.
* Use trimmomatic to clean up raw seq data.
* Use bwa to index and map read against SARS-CoV-2 reference genome.
* Use samtools and bcftools to sort and process reads follwoing mapping.
* Use vcfutils.pl to preapre reads for work in R.
* Use IGV to view mapped reads.
* Use vcfR to read VCF files into R for analysis and visualization script work.
* Create RMD.
* Use ggplot to generate figures, such as for data related to prescence of possible variants.
* Make sure to properly cite packages, etc. used.
* Generate Makefile to run entire project.
* Confirm README is completely up to date.
* Recheck all files for errors with proper tools.
* Push to GitHub and open pull request.

# Change Log
* 2021-04-19: Update README to include project proposal, dataset SRA ID, and theorized workflow.

