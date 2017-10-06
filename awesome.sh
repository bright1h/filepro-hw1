#!/bin/bash

dir=$1

if [ $1 = "--help" ]
then
  echo "This awesome script print out the files in the directories that have the file size higher than specified"
  echo "Argument#1 takes input of directory and Argument#2 takes the specified size"
  echo "This script run by the command ./awesome.sh [#Argument1] [#Argument2]"
else
  if [ ! "$#" -eq 2 ]
  then
    echo "Invalid Numbers of Arguments"
  else
    for i in `ls "$dir"`
    do
     size=`du -b $dir/$i | cut -f 1`
     if [ -f "$dir/$i" ] && [ "$size" -gt "$2" ]
     then
       echo "$i"
     fi
    done

  fi
fi
