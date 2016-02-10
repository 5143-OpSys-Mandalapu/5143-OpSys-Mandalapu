#!/bin/bash

file_name=$@
#echo $file_name
newFile="$(date +%y-%m-%d)_$file_name"
cp $file_name $newFile
#touch $newFile
