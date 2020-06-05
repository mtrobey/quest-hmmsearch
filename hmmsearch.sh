#!/bin/bash
#SBATCH -A b1042             ## account (unchanged)
#SBATCH -p genomics          ## "-p" instead of "-q"
#SBATCH -N 1                 ## number of nodes
#SBATCH -n 1                 ## number of cores
#SBATCH -t 24:00:00          ## walltime
#SBATCH	--job-name="hmmsearch"    ## name of job

echo $1
/software/hmmer/3.1b2/bin/hmmsearch --cpu 1 --domtblout $1.domtable /home/mtr206/Robey/bravo0/bravo/databases/Pfam/Pfam-A_fungal_edits.hmm $1