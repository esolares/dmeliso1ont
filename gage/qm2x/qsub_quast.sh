#!/bin/bash
#$ -N quastgagecanu
### -t 1-17
#$ -pe openmp 32-128
#$ -R Y
#$ -q bigmemory,epyc,free88i,free72i,bio,abio

#source ~/.miniconda
QRY="iso1onpa2_qm_canu_qmdc_new_np_pilon_pilon.fasta"
#REF="dmel-all-chromosome-r6.16.fasta"
REF="dmel.mullerelements.noy.fasta"

quast.py -m 1000 -t 16 $QRY --fragmented -R $REF --gage
