#!/bin/bash

source activate srna_mapping
snakemake -p --cores 32
source deactivate
