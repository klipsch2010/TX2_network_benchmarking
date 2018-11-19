import csv
import matplotlib.pyplot as plt
import numpy as np
#automated reading of all files and subfiles in a directory
import os
import subprocess
import glob
import re
import sys
# used for debugging
import json
# auto format the plots to keep the label from running out of the border
from matplotlib import rcParams
rcParams.update({'figure.autolayout': True})

rootdir = os.path.dirname(os.path.abspath(__file__))
# TODO Turn into input argument
results_path = "./results/"
graph_out_path = "./results/graphs"
threshold = 70

markers = ["o","+","x","o","+","x","o","+","x"]
lines   = ['--', '-.', ':','--', '-.', ':','--', '-.', ':']

# dictionary type that allows for dynamic subkey assignment
class Vividict(dict):
    def __missing__(self, key):
        value = self[key] = type(self)()
        return value

##############################################################################
# Read the input CSV file and filter the data to only use the best detections 
# from the targetted type. 
##############################################################################
def read_csv(file_path, confidence_threshold, removed_text):

    with open(file_path, 'rb') as csvfile:
        # Final formatting
        formatted_detection = []

        image_results = csv.reader(csvfile, delimiter=',', quotechar='|')

        for row in image_results:

            #condition the text file
            image_name0 = row [0]    .replace(removed_text,'')
            image_name1 = image_name0.replace('.jpg'     ,'')
            #split the image characteristics into lists
            image_name_list = image_name1.split("/")
            #get the individual words from the image type to compare to detection labels
            image_name_words = image_name_list[0].split('_')
            
            #format the found list
            found_list = []
            found_list.append(image_name_list[0])
            # combine image name and image number
            found_list.append(image_name_list[0] + "_" + image_name_list[1]);
            for i in range(2 ,len(image_name_list)):
                found_list.append(image_name_list[i])
            # Add the detection fillers
            found_list.append("")
            found_list.append(0)

            for i in range(1, len(row), 2):
                if (i+1) < len(row):
                    
                    # if any word from the image file is found in detected image list, add it to the found list
                    image_found = False
                    for word in image_name_words:
                        if word in row[i]:
                            image_found = True

                    # if the threshold is met, add it to the found list
                    confidence_string = row[i+1].replace("%",'')
                    confidence        = float(confidence_string)
                    if (image_found and confidence >= confidence_threshold):
                        #Good detection, add to list or overwrite with best result 
                        if found_list[-1] < confidence: 
                            found_list[-2] = row[i]
                            found_list[-1] = confidence

            formatted_detection.append(found_list)
        return formatted_detection  

##############################################################################
# Group the sub-groupings (ex: imagetype1_1, imagetype1_2, etc)  
##############################################################################
def organize_data(formatted_detection, network_title):
    #Note: there is probably a more efficient way to do this. 
    #Group the lists 

    # loop through all results to get the different image types
    image_list_top = []
    for element in formatted_detection:
        if element[0] not in image_list_top:
            image_list_top.append(element[0])  

    # create sublists based on image types found in image_list_top
    
    #initialize list dimensions
    n = len(image_list_top)
    image_list_grouped = [[] * n for i in range(n)]
    for i in range(len(image_list_grouped)):
        image_list_grouped[i].append(image_list_top[i])

    # loop through all the image results
    for element in formatted_detection:
        # loop through the image types
        for i in range(len(image_list_top)):
            # check if the current image type is found
            if image_list_top[i] in element[0]: 
                # put found image type in appropriate grouping
                #image_list_grouped[i].append(element[1:])

                #create new 2d list for new subgroup, [sublabel,[sublist2_0]]
                sub_list = []
                sub_list.append(network_title + "_" + element[1])
                sub_list.append([])
                sub_list2 = element[2::]
                sub_list[1].append(sub_list2)

                # create sub-lists based on element 0 of the sublist
                # first element, just add it as new sublist 
                if len(image_list_grouped[i]) <= 1:
                    image_list_grouped[i].append(sub_list)
                else:
                    # Find if the sub-label already exists 
                    label_found = False
                    found_index = 0
                    for sub_element_ind in range(len(image_list_grouped[i])):

                        # if the label substring is found in the list element assigned to already found lables,
                        # then save off the index and break the loop.
                        if element[1] in image_list_grouped[i][sub_element_ind][0]:
                            label_found = True
                            found_index = sub_element_ind
                            break

                    # This image is not currently in the sublist, add new sublist [sublabel_n,[sublist2_0]]                                 
                    if not label_found:
                        image_list_grouped[i].append(sub_list)
                    # Image already exists, append data only (not image name) to the appropriate sublist 
                    # [sublabel_n,[sublist2_0],...,[sublist2_n]]
                    else:
                        image_list_grouped[i][sub_element_ind][1].append(sub_list2)
    

    # sort the sublists alphabetically
    for im_ind in range(len(image_list_grouped)):
        sorted_list = sorted(image_list_grouped[im_ind][1:], key=lambda x:x[0])
        image_list_grouped[im_ind][1:] = sorted_list
        
    return image_list_grouped

##############################################################################
# Format the data into a dictionary
##############################################################################
def convert_to_dictionary(formatted_list):

    # create an empty dictionary
    image_types = Vividict()

    for network_list in formatted_list:
        for detection_type in network_list:    

            temp_sublist = detection_type[1:]

            for single_result in temp_sublist:
                run_label = single_result[0]
                distance_list  = []
                confidence_list = []
                reported_detections = []
                for x_y in single_result[1]:
                    distance_list.append(x_y[0])
                    confidence_list.append(x_y[2])
                    reported_detections.append(x_y[1])

                image_types[detection_type[0]][run_label]["distances"] = distance_list
                image_types[detection_type[0]][run_label]["confidences"] = confidence_list
                image_types[detection_type[0]][run_label]["reported_detections"] = reported_detections
    return image_types


##############################################################################
# Loop throught the detections and plot them
##############################################################################
def plot_the_data(results_dictionary):
    # check python version
    if sys.version_info[0] < 3:
        # Loop through the image types (ex: Cars)
        for key, value in results_dictionary.iteritems():
            plot_cnt = 0
            # Loop through the image subtypes and plot each result (ex: Cars_1, Cars_2, etc)
            for subkey, subvalue in value.iteritems():
                x_value = subvalue["distances"]
                y_value = subvalue["confidences"]
                plt.plot(subvalue["distances"], subvalue["confidences"],label=subkey, linewidth=2, linestyle=lines[plot_cnt], marker=markers[plot_cnt] )
                plot_cnt += 1

            #format the plot
            plt.xlabel('Distance (ft)')
            plt.ylabel('Confidence (%)')
            plt.title(key)
            plt.legend(loc='center left', bbox_to_anchor=(1, 0.5))
            # Save graph
            if not os.path.exists(graph_out_path):
                os.makedirs(graph_out_path)
            result_location = graph_out_path + "/" + key + ".png"
            print "Outputting " + result_location
            plt.savefig(result_location, bbox_inches = "tight")
            plt.clf()
    else:
        raise Exception("Must be using Python 2")

##############################################################################
#MAIN
##############################################################################

csv_file_path  = rootdir + "/" + results_path

#create master list containing all results
master_list = []

#file_count  = 0
#loop through all the results files
for csv_file in os.listdir(csv_file_path):
    if csv_file.endswith(".txt") or csv_file.endswith(".csv"):

        #csv_file                = "results_yolov3.txt"
        folder_path             = "/home/nvidia/project/images/"
        #csv_file_path           = results_path + "/" + csv_file

        # grab the network name from the path
        temp_split   = csv_file.split('.')
        network_name = temp_split[0].replace("results_",'')

        # read the files and organize the data
        csv_file_path           = results_path + "/" + csv_file
        single_nework_file_read = read_csv(csv_file_path, threshold, folder_path)
        single_network_data     = organize_data(single_nework_file_read, network_name)

        master_list.append(single_network_data)

master_dict = convert_to_dictionary(master_list)

# Plot the data
plot_the_data(master_dict)


#TODO fix ssd results file output order. The confidence and label are reversed. 