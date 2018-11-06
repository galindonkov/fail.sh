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
- File ```Vagrantfile``` : Has the configuration for vagrant, about what type of VM we want, once set, executing vagrant up will have our clean environment
- A file ```travis_install.sh``` under directory ```scripts``` : A provision script that will install required ```travis-cli``` on the VM created by ```vagrant up``` command

**Manual instructions how to test ```fail.sh``` program**

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
