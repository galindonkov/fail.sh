

1.**Create a repo with fail.sh script**
- Connect to your profile in GITHUB and create a repo with name fail.sh with README file and MIT license
- add DETAILED.MD file with instructions on every step
- update the README file TODO list
- clone the repo omn your PC : ```git clone repo_ssh```
- create a new branch : ```git checkout -b branch_name```
- create a fail.sh script that returns "1" : ```vi test.sh```
```
#!/usr/bin/env bash
   echo 1
```
- add the newly added file : ```git status``` , ```git add .```
- commit the changes : ```git commit -m "title"```
- push the changes : ```git push origin branch_name```
- PR and Merge from the GITHUB

2.**Add the repo to travis with a test**
- go into the travis site and enable repo "fail.sh"
- Get into the cloned repo 
- Pull the master branch to get its latest update : ```git checkout master``` , ```git pull origin master```
- create a new branch for adding travis file : ```git checkout -b "branch_name```
- create .travis.yml file with a test that always pass : ```vi .travis.yml```
```language: generic
dist: xenial
sudo: required
script:
- echo 0
```
- add the travis file : ```git status``` , ```git add .```
- commit the changes : ```git commit -m "commit_name"```
- create a push request : ```git push origin "current_branch_name"```
- create a PR and Merge it from GITHUB


















