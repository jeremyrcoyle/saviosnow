# load libraries
library(snowslurm)
library(snow)
library(doSNOW)

# set up cluster
cl=makeSLURMcluster()
registerDoSNOW(cl)
mcoptions <- list(preschedule=F, set.seed=T)

# example simulation
sim=function(n=1000){
  mean(rnorm(n))
}

B=100
allresults=foreach(i=icount(B),.options.multicore=mcoptions) %dopar% {
  result=sim()
  #always want to save per iteration results in case something goes wrong
  save(result,file=sprintf("tmpdata/result_%04d.rdata",i))

  #return result from loop
  result
}

allresults=do.call(rbind,allresults)
save(allresults,file="allresults.rdata")

# clean up cluster
stopCluster(cl)

