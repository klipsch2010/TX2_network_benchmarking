#!/bin/bash

while getopts i:o:r:s: option
do
case "${option}"
in
	i) INPUT_IMAGE=${OPTARG};;
	o) OUTPUT_IMAGE=${OPTARG};;
        r) RESULT_PATH=${OPTARG};;
	s) RESULT_SUB_PATH=${OPTARG};;
esac
done

network="googlenet"
out_path="$RESULT_PATH/$network$RESULT_SUB_PATH"
out_image="$out_path$OUTPUT_IMAGE"
#create result path if it doesn't exist. 
mkdir -p $out_path

#run the network script
cd ~/project/alex-googlenet/jetson-inference/build/aarch64/bin
#./imagenet-console granny_smith_1.jpg ../../../results/images/output_1.jpg
./imagenet-console $INPUT_IMAGE $out_image

#move results text file
cp ../../../results/results.txt ../../../../../results/results_$network.txt
