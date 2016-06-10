#!/bin/bash

#load appropriate modules
module swap intel/2013_sp1.4.211 gcc/4.4.7 
module load openmpi
module load r

#install R packages for snow and foreach
R --no-save < Rsetup.R

#install snowslurm
git clone https://github.com/jeremyrcoyle/snowslurm.git
R CMD INSTALL snowslurm/snowslurm
rm -Rf snowslurm
