# Runs of EVB for Epoxyhydrolase

## Requirements

### Maestro

Maestro from Schrodinger is need to generate the parameters of the ligands and modified aminoacid residues. Install it through accessing the [Free Maestro](https://www.schrodinger.com/freemaestro) web site. 

### Q6

Q6 is the University of Uppsala software for empirical valence bond (EVB) calculations. It is obtained from its [GitHub repo](https://github.com/qusers/Q6). 

**Troubleshooting**

* the proposed method to download the program in the README-md file of the repo may create some problems. 
```
unset SSH_ASKPASS
git clone https://www.github.com/qusers/Q6.git
```
Instead, use you usual `git` setup to download the code or, alternatively, you may always download the ZIP file of the repo. 


### Qtools

Qtools is a collection of python scripts that make life easier for computational chemists willing to run EVB calculations, in particular to set up medium throughput EVB calculations with several replicas. It can be obtained from [Miha Purg's GitHub repo](https://github.com/mpurg/qtools).