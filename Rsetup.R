options(repos="http://cran.cnr.berkeley.edu/")

#install Rmpi (not using Rmpi because it doesn't seem to work on SAVIO. Using snowslurm instead)
#install.packages("Rmpi",configure.args="--with-Rmpi-type=OPENMPI")

#install snow/foreach stack
install.packages(c("snow","doSNOW","foreach"))

