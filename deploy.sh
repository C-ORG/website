#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Go To Public folder
cd public
# Add changes to git.
git checkout master
git pull
git add .

# Commit changes.
git commit -m "$msg"

# Push source and build repos.
git push origin master

# Come Back up to the Project Root
cd ..
