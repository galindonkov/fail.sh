**Description**

  This is a ```fail.sh``` program that is always printing ```failed exit code``` after executing.


**The repo is having following files**
- ```DETAILED.md``` : Detailed instructions how each step is accomplished with all related commands and needed information
- File ```test.sh``` - : A script that always fails
- File ```fail_test.sh``` : a script that check the exit code from program test.sh and prints either good or bad testing output 
- File ```.travis.yml``` : a Continues Intergation added for testing purpose

**TODO list**
- [ ] Create a repo with fail.sh program in it that prints fails
- [ ] Add the repo to travis with test that always pass
- [ ] Create a ```test.sh``` program that tests the output from ```fail.sh``` and put it into the travis file.
- [ ] Create a new release
