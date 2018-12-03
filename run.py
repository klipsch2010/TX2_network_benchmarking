import os
import subprocess
import glob
import re
import time
rootdir = os.path.dirname(os.path.abspath(__file__))

# create input aruments for these
inputdir         = "images"
run_networkdir   = "run_networks"
resultdir        = "results"
commandsdir      = "terminal_commands.txt"
benchmarkdir     = "run_time"
benchmarkfile    = "timing_benchmark.txt"

input_full_dir   = rootdir + "/" + inputdir
network_full_dir = rootdir + "/" + run_networkdir
result_full_dir  = rootdir + "/" + resultdir 
benchmark_dir    = result_full_dir + "/" + benchmarkdir 
benchmark_path   = benchmark_dir + "/" + benchmarkfile

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

#create timing benchmark file
if not os.path.exists(result_full_dir):
    os.makedirs(result_full_dir)

with open(benchmark_path, 'w+') as bench_file:
	# result benchmark header
	benchmark_header = "Image Path, Image Type , Network Type, Image Distance (ft), Run Time (sec)\n"
	bench_file.write(benchmark_header)

	#Loop through the input images
	for subdir, dirs, files in os.walk(input_full_dir):
	    for name in files:
		# Loop through the run scripts
		for (scr_dirpath, scr_dirname, scripts) in os.walk(network_full_dir):
		    for script in scripts: 
		        # add the picture location to the input argument
		        input_image = os.path.join(subdir, name)

		        # create result image path if it doesn't exist
		        path_split   = input_image.split("/")
		        image_name   = path_split[-1]
		        image_type   = path_split[-3] + "_" + path_split[-2]
		        image_dist   = image_name.split(".")[0]
		        path_split2  = input_image.split(inputdir)
		        sub_out_path = path_split2[-1].replace(image_name,'')
		        result_path  = result_full_dir + "/images"
		        network_splt = script.split("_")[1]
		        network_name = network_splt.split(".")[0]

		        # Compile the run command for the current image and network
		        command = network_full_dir + "/" + script + " -i " + input_image + " -o " + image_name + " -r " + result_path + " -s " + sub_out_path
		    	
		        # Perform timing benchmark
                        start_time = time.time()

                        # Run the current image through the current network
		        process = subprocess.Popen(command.split())
		        process.wait()
		        print process.returncode

                        # Save runtime results
		        run_time = time.time() - start_time
		        benchmark_time = input_image + ", " + image_type + ", " + network_name + ", " + image_dist + ", " + str(run_time) + "\n"
		        bench_file.write(benchmark_time)

	bench_file.close()
# Compile the results
