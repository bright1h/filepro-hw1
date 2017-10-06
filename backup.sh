#!/bin/bash

date=`date +%Y-%m-%d_%T`
filename=`basename $1`
destdir="/subm/u5880685/backups/"

mkdir -p /subm/u5880685/backups
cp -r $1 "/subm/u5880685/backups/$filename"_"$date"

echo "Backup $1 completed successfully."
