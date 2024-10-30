# {{cookiecutter.project_name}}

{{cookiecutter.project_desc}}

Started on {{cookiecutter.start_date}}.

## Directory structure

**00_previous_analyses** :
When analyses have been performed before, please store them here. 

**01_project_monitoring** :
You will find here a `Monitoring.md` file to save all of what has been done in the project, the goals, the things to do and the exchanges with the biologists. You can also store here any other information of the projects, such as papers, presentations or images.

**02_data_processing** :
This is where you analyse and store all the data processing steps (eg. generation of the count matrix out of FastQ files). These are analyses you are supposed to do just once (or let's say a few times).

**03_data_analyses** :

* **data** - data used for analysis : it might be raw, intermediate or final data. This folder is not saved in Git. 
* **env** - Any virtual environment you would use (by default, we use Renv)
* **notebook** - R Markdown analysis files
* **output** - Output files (tables, images, plots...)
* **report** - Rendered analysis reports
* **scripts** - Reusable code (functions etc.)


## Data

Input data files include:


## Analysis

### 02_data_processing

### 03_data_analyses

Current analysis files include:

* **template.Rmd** - Analysis template

## Large file handling

You have two options to handle large files (> 100 Mo) : 

* Just ignore them : add them in the `.gitignore` file.
* Add them with Git LFS : add them in the `.gitattributes` file.

## Perform the analyses

### First time 

You just have to run the `bash initialize_project.sh` script and it will set up all the folders architecture, the GitLab and the Renv that you will need. 


### Re-process the analyses

If you want to perform the analyses again, you just have to follow those steps : 

1. Clone the GitLab repository
2. Restore the R packages with their versions with `renv::restore()`


