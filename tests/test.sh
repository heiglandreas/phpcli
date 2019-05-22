#!/bin/bash

dir_list=$(ls -d */ | sed 's/\/*$//g')

for dir in $dir_list
do
(
    docker build -t phpcli/php-$dir -f ../$dir/Dockerfile ../$dir
    cd $dir
    dgoss run -it phpcli/php-$dir
)
done
