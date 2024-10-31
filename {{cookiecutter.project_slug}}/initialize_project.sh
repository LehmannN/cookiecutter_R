#!/bin/bash

# ---------------------------------------------------
# 1. Create the project with cookiecutter
# ---------------------------------------------------
# If not working, please have a look at https://github.com/LehmannN/cookiecutter_R/tree/master
#cookiecutter gh:lehmannn/cookiecutter_R

# ---------------------------------------------------
# 2. Go to the project folder
# ---------------------------------------------------
#cd "$(dirname "$0")"

# ---------------------------------------------------
# 3. Make sure your pre-commit script is executable
# ---------------------------------------------------
mkdir -p .git/hooks
mv hooks/* .git/hooks
chmod +x .git/hooks/pre-commit
rm -r hooks

# ---------------------------------------------------
# 4. Initialize Git and create GitLab repository
# ---------------------------------------------------
# 4.1. First commit
git init
git lfs install
git add .
git commit -m "Initial commit for {{ cookiecutter.project_name }} by {{ cookiecutter.full_name }}"

# 4.2. Add remote if repository is new
if [ "{{ cookiecutter.existing_git_repo|lower }}" = "no" ]; then 
	git remote add origin "{{ cookiecutter.git_repo_url }}"
	echo "Git repository initialized and remote set to {{ cookiecutter.git_repo_url }}"
fi

git push -u origin master


# ---------------------------------------------------
# 5. Setup R environment
# ---------------------------------------------------
Rscript 03_data_analyses/init_renv.R

echo "Project setup complete!"