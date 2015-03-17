saviosnow
=======

SAVIO SNOW - Example code for using SNOW on the UCB SAVIO cluster

I couldn't make Rmpi work on SAVIO, so I decided to use the [snowslurm](https://code.google.com/p/snowslurm/source/browse/snowslurm/R/snowslurm.R) package from UMBC. 
This example is cribbed from the [UMBC HPC documentation](http://www.umbc.edu/hpcf/user-resources/how-to-run-R.html#heading_toc_j_5)
 
--------------------------

### Installation

* Download the latest version from github

    ````
    git clone https://github.com/jeremyrcoyle/saviosnow.git
    ````

* Run the setup script to setup the right environment on SAVIO

    ````
    cd saviosnow
    ./setup.sh
    ````

### Usage
* Modify the example job -- change the e-mail address and working directory lines

    ````
    emacs slurmjob.sh
    ```

* Submit the example job 

    ````
    sbatch slurmjob.sh
    ```

* See its running status

    ````
    squeue -j [jobnumber]
    ```

* Check the output

    ````
    less slurm.out
    less exsnowslurm.Rout
    ```
