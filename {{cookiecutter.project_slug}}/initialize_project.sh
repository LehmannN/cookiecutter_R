#!/bin/bash

# 1. Create the project with cookiecutter
# If not working, please have a look at https://github.com/LehmannN/cookiecutter_R/tree/master
cookiecutter gh:lehmannn/cookiecutter_R

# 2. Go to the project folder
cd "$(cookiecutter.project_slug)"

# 3. Make sure your pre-commit script is executable
chmod +x {{cookiecutter.project_slug}}/.git/hooks/pre-commit.sh

# 4. Initialize Git et create GitLab repository
git init
git remote add origin "https://gitlab.com/username/$(cookiecutter.project_slug).git"
git lfs install
git add .
git commit -m "Initial commit"
git push -u origin master

# 5. Exécuter le script renv d'initialisation
Rscript init_renv.R