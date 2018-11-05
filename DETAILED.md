## DONE

### Create a repo with fail.sh script
- Connect to your profile in GITHUB and create a repo with name fail.sh with README file and MIT license
- add DETAILED.MD file with instructions on every step
- update the README file with TODO list
- clone the repo omn your PC : ```git clone repo_ssh```
- create a new branch : ```git checkout -b branch_name```
- create a fail.sh script that returns "1" : ```vi fail.sh```
```
#!/usr/bin/env bash
exit 1
```
- add the newly added file : ```git status``` , ```git add .```
- commit the changes : ```git commit -m "title"```
- push the changes : ```git push origin branch_name```
- PR and Merge from the GITHUB

### Add the repo to travis with a test
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

### Create test.sh that tests the output from fail.sh
- get into the cloned repo
- change to master branch and pull to get its lastest update : ```git checkout master``` , ```git pull origin master```
- create a new branch for the testing purpose : ```git checkout -b "branch_name"```
- add test.sh that test the output from fail.sh and put test.sh into travis file : 
```vi fail_test.sh```

```
#!/usr/bin/env bash
bash fail.sh
if [ $? -eq 1 ]; then

   echo "test is good";
else 
   echo "test not good"
   exit 1
fi
```
```vi .travis.yml```
```
language: generic
dist: xenial
sudo: required
script:
- bash test.sh
```
- check the newly updated and created files and add them : ```git status``` , ```git add .```
- commit the changes : ```git commit -m "commit_title"```
- create a push request : ```git push origin "current_branch_name"```
- Create PR and Merge it from GITHUB

### Create a release
- get into the cloned repo
- pull the master the get its latest status : ```git checkout master``` , ```git pull origin master```
- create a new branch for release adding purpose : ```git checkout -b "branch_name"```
- update the .travis.yml file with release requirement information by using "travis cli"
```travis setup releases``` and follow the steps and the .travis.yml should look like:
```
language: generic
dist: xenial
sudo: required
script:
- bash test.sh
deploy:
  provider: releases
  api_key:
    secure: Ec49fYBcI32RU4imsmnLLO2Yw72S3WgTKWhQYTOzAsURuxwabj8glISXUwzPGtFByHT7HOzkkKjQ4F4PekTng1mdu4fRm3XgF1Wiu8ZMPrNSFv9lTlTFj3RRnRCi+CwnX4lDLNXBReisoVvpobjCsAMpD7WL/lHzP/BgkcPDkWUZD8RcoUbsSHqNeN5BOPiZfODCKYNNX9P4gmDmR5znoc/a7+1QIxarw5R4349O1aLpBQdCHbbgPtR2CAy6woSaQwTEuPn+oeRLg1n8jjW+U32nooBYX66xfMO4Ofwe70RDPXLYhBnrZIkNSQcJl5zvNOglyCdMJXNZE7xIB3dIpjmNp8TVcTubT77A7XWhIikPymCX42zv8RBa7/f3yt9PntlsGqFcWA6m1VMCrdSpLfO9Y+W+vmFQRQMMjKEB1iSb+SAFvjgYmqMUFeuGoJXL73fxn+cAmJgsV+y1buWrCW4en6bjfPmWR1MNTTttOlf0mK6UAdQJ4uFwGs3GdZw6KvRQWvxD4TcPr+8Y8H2O9lr+Bk/nMgZQM2gvjgxq9OIWUc79Tt0+cmOPhUlCElGm4egvRI1liyNj2Nm4cNZ9IIdplE/0IWP5+bubqx+UZp/s0Cv/7L10yI+8fdqJDtZsySU18l7aCmBvNs8JBGvrIGPgr7shplyvIkXCCMKCdd8=
  file: fail.sh
  on:
    repo: galindonkov/fail.sh
    tags: true
```
- add the updated travis file : ```git status``` , ```git add .```
- commit the cnages : ```git commit -m "commit_title"```
- create push request : ```git push origin "current_branch"```
- create PR and Merge it
- In order to create a new release go into the GITHUB -> RELEASES and create a pre-release that is not ready for PROD YET
