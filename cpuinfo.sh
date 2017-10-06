#!/bin/bash

cpuinfo=`grep -i 'model name' /proc/cpuinfo | cut -d ':' -f 2`
echo "$cpuinfo"
