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

network="ssd"
out_path="$RESULT_PATH/$network$RESULT_SUB_PATH"
out_image="$out_path$OUTPUT_IMAGE"
#create result path if it doesn't exist. 
mkdir -p $out_path

#run the network script
cd ~/project/ssd-caffe/
#PYTHONPATH=/home/nvidia/project/ssd-caffe/python python ./examples/ssd/ssd_detect_w_report.py --image_file ~/project/ssd-caffe/examples/images/peds-002.jpg
PYTHONPATH=/home/nvidia/project/ssd-caffe/python python ./examples/ssd/ssd_detect_w_report.py --image_file $INPUT_IMAGE

#move the output image?
mv ./results/images/* $out_path

#move results text file
cp ../ssd-caffe/results/ssd_result.txt ../results/results_$network.txt
