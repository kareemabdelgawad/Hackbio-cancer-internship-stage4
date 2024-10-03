#!/bin/bash

# Download Miniconda installer
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

# Run the installer script
sh Miniconda3-latest-Linux-x86_64.sh

# Initialize Conda (add conda to PATH)
source ~/miniconda3/bin/activate

# Create a new environment and install necessary tools using bioconda
conda create -n ngs_pipeline_env -y
source ~/miniconda3/bin/activate ngs_pipeline_env

# Install the tools from bioconda
conda install -c bioconda -y fastqc
conda install -c bioconda -y fastp
conda install -c bioconda -y bwa
conda install -c bioconda -y samtools
conda install -c bioconda -y bcftools

echo "All tools installed successfully."

