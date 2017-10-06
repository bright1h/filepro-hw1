#!/bin/bash

data=`curl https://en.wikipedia.org/wiki/World_Happiness_Report?action=raw | grep "flag|"| sed 's/NA/|/g' | cut -d '|' -f 8 | cut -d '}' -f 1`
echo "$data"
