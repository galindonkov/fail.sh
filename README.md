###**HOW TO USE THE REPO**###

**Description**

  This is a ```fail.sh``` program that always fails.

**Prerequisites**

Virtualbox\
Vagrant


**The repo is having following files**
- ```DETAILED.md``` : Detailed instructions how each step is accomplished with all related commands and needed information
- File ```test.sh``` - : A script that always fails
- File ```fail_test.sh``` : a script that check the exit code from program test.sh and prints either good or bad testing output 
- File ```.travis.yml``` : a Continues Intergation added for testing purpose

**Manual instructions**

*Clone this repo*

- ```git clone git@github.com:galindonkov/fail.sh.git```

*Go into the cloned repo dir*

- ```cd fail.sh/```

*Run the following command*

- ```vagrant up```

*Logging to the machine by running*

- ```vagrant ssh```

*Test the ```fail.sh``` program by*

- ```/vagrant/fail.sh```
