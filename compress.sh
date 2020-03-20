#!/bin/bash

cd dataset/

for folder in *;
do
echo $folder
tar -czf ${folder}.tar.gz $folder
rm -rf $folder/
done
