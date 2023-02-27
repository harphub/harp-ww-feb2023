# harp-ww-feb2023
Example code and projects for the harp working week at DMI in February 2023. 

This repository is for reproducing spatial verication examples that were shown during the working week. The repository is set up as follows:

```
├── data
│   ├── meps - deterministic forecast from the MEPS model - file only contains precipitation
│   ├── met_analysis - Nordic 1km precipitation analysis
├── harphub - project directory using the harpSpatial version at harphub
│   ├── renv.lock - lockfile to restore project: use renv::restore() from this directory
│   ├── harphub_test.Rmd - notebook markdown
├── harpspatialtema - project directory using the development harpSpatial version at harpSpatialTeam
│   ├── renv.lock - lockfile to restore project: use renv::restore() from this directory
│   ├── harphub_test.Rmd - notebook markdown
├── ├── conf
├── ├── ├── my_conf.R -configuration file for running spatial verification
├── ├── ├── my_domain.rds - verification domain
```

In order to get up and running, you first need to restore the projects from the lockfiles. 
You should do this in separate R sessions and run the projects in separate R sessions as well. 

To restore a project, first make sure that you have the [renv](https://rstudio.github.io/renv/) 
package installed. Navigate to one of the project directories and start R. Then at the command line 
type `renv::restore()`. The correct versions of all of the packages will be installed to the project. 
You may get a warning about the R version - hopefully this won't matter. 
Do the same for the other project. 

The notebooks can be rendered with `rmarkdown::render()`, or by clicking on __Preview__ in RStudio. 

As an exercise, you may want to take the code in the notebooks and rewrite as a standalone R script. 
