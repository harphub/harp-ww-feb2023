# harp-ww-feb2023
Example code and projects for the harp working week at DMI in February 2023. 

Rendered versions of the examples can be found on the [harp Training Course](https://harphub.github.io/harp-training-2022/verifspat.html) 
website. 

**Before beginning, it is highly recommended that you have a Github Public Access Token (PAT). This will prevent Github from 
throttling downloads based on too many files and / or lack of authentication. You will need a Github account and you can 
follow the instructions in [Happy Git with R](https://happygitwithr.com/https-pat.html) for how to set it the PAT from within R.**

This repository is for reproducing spatial verication examples that were shown during the working week. The repository is set up as follows:

```
├── data
│   ├── meps - deterministic forecast from the MEPS model - file only contains precipitation
│   ├── met_analysis - Nordic 1km precipitation analysis
├── harphub - project directory using the harpSpatial version at harphub
│   ├── renv.lock - lockfile to restore project: use renv::restore() from this directory
│   ├── harphub_test.Rmd - notebook markdown
├── harpspatialteam - project directory using the development harpSpatial version at harpSpatialTeam
│   ├── renv.lock - lockfile to restore project: use renv::restore() from this directory
│   ├── harphub_test.Rmd - notebook markdown
├── ├── conf
├── ├── ├── my_conf.R -configuration file for running spatial verification
├── ├── ├── my_domain.rds - verification domain
```

In order to get up and running, you first need to restore the projects from the lockfiles. 
You should do this in separate R sessions and run the projects in separate R sessions as well. 

## Brief Instructions

To restore a project, first make sure that you have the [renv](https://rstudio.github.io/renv/) 
package installed. Navigate to one of the project directories (harphub or harpspatialteam) and start R. 
Then at the command line type `renv::restore()`. The correct versions of all of the packages will be 
installed to the project. You may get a warning about the R version - this only matters if the R version 
is older than 3.5. Do the same for the other project. Note that the installation could take a while for 
the first project, but should be quick for the second as it will use a linked cache for the packages.

The notebooks can be rendered with `rmarkdown::render()`, or by clicking on __Preview__ in RStudio. 
**Note that you will need to have the *pandoc* system library available to render markdown 
documents.** *Pandoc* is shipped with RStudio, so outside of RStudio you will need to get the library 
[installed](https://pandoc.org/installing.html). 

As an exercise, you may want to take the code in the notebooks and rewrite as a standalone R script. 

## Detailed Instructions for the harphub project (do exactly the same for harpspatialteam)


After cloning the repository

**RStudio**

* Open RStudio
* File > Open Project > Directory where you installed the repository > harp-ww-feb2023 > harphub > harphub.Rproj
* In the console pane: `renv::restore()`
* Say yes to activating project
* Say yes to proceeding with installation of packages
* Wait (in general warnings can be ignored)
* File > Open File > harphub_test.Rmd
* In Source pane (normally top left) > Run > Run All
* When finshed.. In Source Pane > Preview

**R from Terminal**

* cd to `path/to/repository/harp-ww-feb2023/harphub`
* Start R
* `renv::restore()`
* Say yes to activating project
* Say yes to proceeding with installation of packages
* Wait (In general warnings can be ignored)
* `rmarkdown::render("harphub_test.Rmd")`
* When finished open harphub_test.nb.html in a web browser


