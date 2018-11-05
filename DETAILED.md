

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


















