#!/usr/bin/env bash
bash fail.sh
if [ $? -eq 1 ]; then

   echo "test is good";
else 
   echo "test not good"
   exit 1
fi
