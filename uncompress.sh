#!/bin/bash

cd dataset/

for tar_file in *;
do
echo $tar_file
tar -xf ${tar_file}
rm ${tar_file}
done
