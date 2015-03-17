#!/bin/bash
# Job details:
#SBATCH --job-name=test
#SBATCH --mail-user=jrcoyle@berkeley.edu
#SBATCH --workdir=/global/home/users/jrcoyle/saviosnow
#
# Job output
#SBATCH --output=slurm.out
#SBATCH --error=slurm.out
#
# Partition:
#SBATCH --partition=savio
#
# Account:
#SBATCH --account=ac_biostat
#
# QoS:
#SBATCH --qos=condo_biostat
#
# Processors: (1 node, 20 cores)
#SBATCH --nodes=1
#SBATCH --ntasks=20
#SBATCH --exclusive
#
# Wall clock limit:
#SBATCH --time=0:0:30
#
## Run command
export R_LIBS=~/.R-packages
module load openmpi r
R --no-save -q < exsnowslurm.R > exsnowslurm.Rout
