import os
import subprocess
import glob
import re
rootdir = os.path.dirname(os.path.abspath(__file__))

# create input aruments for these
inputdir         = "images"
run_networkdir   = "run_networks"
resultdir        = "results"
commandsdir      = "terminal_commands.txt"

input_full_dir   = rootdir + "/" + inputdir
network_full_dir = rootdir + "/" + run_networkdir
result_full_dir  = rootdir + "/" + resultdir

#remove all results.txt prior to run
for subdir, dirs, files in os.walk(rootdir):
    for name in files:
        if "result.txt" in name:
            result_file = os.path.join(subdir, name) 
            print("Removing previous result file: " + result_file)
            os.remove(result_file)
        if "results.txt" in name:
            result_file = os.path.join(subdir, name) 
            print("Removing previous result file: " + result_file)
            os.remove(result_file)

#Loop through the input images
for subdir, dirs, files in os.walk(input_full_dir):
    for name in files:
        # Loop through the run scripts
        for (scr_dirpath, scr_dirname, scripts) in os.walk(network_full_dir):
            for script in scripts: 
                # add the picture location to the input argument
                input_image = os.path.join(subdir, name)
                #print("input image path: " + input_image)

                # create result image path if it doesn't exist
                path_split   = input_image.split("/")
                image_name   = path_split[-1]
                path_split2  = input_image.split(inputdir)
                sub_out_path = path_split2[-1].replace(image_name,'')
                result_path  = result_full_dir + "/images"
                #print("result path    : " + result_path)
                #print("sub output path: " + sub_out_path)
                #print("image name     : " + image_name)

                # Delete this \/
                #if not os.path.exists(result_path):
                    #os.makedirs(result_path)
                #print("output image w/o .jpg: " + result_path)

                # Delete this \/
                # create the output directory from the current input file name
                #output_image = result_full_dir + path_split2[-1]
                #print("output image path: " + output_image)
            
                command = network_full_dir + "/" + script + " -i " + input_image + " -o " + image_name + " -r " + result_path + " -s " + sub_out_path
                #print(command)
            
                process = subprocess.Popen(command.split())
                process.wait()
                print process.returncode

# Compile the results
