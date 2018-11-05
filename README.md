# fail.sh
The task is to create a repo with a test, travis test, release and proper readme file and detailed instructions for a script that always fails:

#TO DO
1.Create a repo with fail.sh script
- create a repo with name fail.sh with README file and MIT license
- add DETAILED.MD file with instructions on every step
- update the README file TODO list
- clone the repo
- create a new branch
- create a fail.sh script that returns "1"
- add the newly added file
- commit the changes
- push the changes
- PR and merge

2.Add the repo to travis with a test.
- go into the travis site and enable repo "fail.sh"
- get into the cloned repo
- pull the master branch to get its latest state
- create a new branch for adding travis
- create .travis.yml file with a test that always pass
- add the travis file
- commit the newly added travis file
- create a push request
- PR and merge

3.Create test.sh that tests the output from fail.sh
- get into the cloned repo
- pull the master branch
- create a new branch for the testing purpose
- add test.sh script that test the output from fail.sh and put the test.sh into travis
- add the test.sh file and the upadted travis
- commit the changes
- Push request
- PR and then merge

4.Create a release
- get into the cloned repo 
- pull the master to get its latest state
- create a new branch for release adding
- update the .travis file with releases requirement information
- add release part to the travis file with "travis cli" and follow the steps
- add the updated travis file 
- commit the changes
- push request
- PR and merge
- go into the github and from release tab create a new release and wait the file added previously to travis to be populated.

