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

network="yolov3"
out_path="$RESULT_PATH/$network$RESULT_SUB_PATH" 
out_image="$out_path$OUTPUT_IMAGE"
#create result path if it doesn't exist. 
mkdir -p $out_path

#run the network script
cd ~/project/yolov3/
#./darknet detect cfg/yolov3.cfg yolov3.weights ~/project/yolov3/peds-002.jpg -out "/home/nvidia/project/yolov3/results/images/peds-002"
./darknet detect cfg/yolov3.cfg yolov3.weights $INPUT_IMAGE -out "$out_image"

#move results text file
cp ./results/results.txt ../results/results_$network.txt
