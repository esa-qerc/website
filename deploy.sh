#!/bin/bash

# build and deploy the website, following instructions from here: https://gohugo.io/hosting-and-deployment/hosting-on-github/

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project.
hugo -F # if using a theme, replace with `hugo -t <YOURTHEME>`

# Go To Public folder
cd public
# Add changes to git.
git add .

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

# Come Back up to the Project Root
cd ..
