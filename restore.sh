#!/bin/bash

rec="./recovered"
folder=$1
from_dir="/subm/u5880685/backups/"

if [ -d "$rec" ]
then
  #statements
  if [ -d "$rec/$folder" ]
  then
    #statements
    rm -rf "$rec/$folder"
    mkdir "$rec/$folder"
  else
    mkdir "$rec/$folder"
  fi
else
  mkdir "$rec"
  mkdir "$rec/$folder"
fi

target=`ls "$from_dir" |grep -i "$folder" | sort -gr | head -n 1`
cp -r "$from_dir/$target" "$rec/$folder"

echo "$folder has been restored to $rec/$folder"
