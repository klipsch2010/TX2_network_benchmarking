import csv
import matplotlib.pyplot as plt
import numpy as np
import sys
# auto format the plots to keep the label from running out of the border
from matplotlib import rcParams
rcParams.update({'figure.autolayout': True})

markers = ["o","+","x","o","+","x","o","+","x"]
lines   = ['--', '-.', ':','--', '-.', ':','--', '-.', ':']
#colors  = ["blue", "red", "green", "orange", "yellow", "gray", "black","lightgreen", "ivory" ,"rosybrown", "royalblue", "saddlebrown", "salmon"]
colors  = ["skyblue", "royalblue", "navy", "yellowgreen", "seagreen", "darkgreen", "darksalmon", "red", "firebrick", "gainsboro", "darkgrey", "dimgrey", "salmon"]


##############################################################################
# Loop throught the detections and plot them
##############################################################################
def plot_multibar(y_lists, x_markers, sub_bar_labels, x_label="x_value", y_label="y_value", y_range=[0,0], title="Multi_bar_graph", graph_path="graph_out.png"):
    # check python version
    if sys.version_info[0] < 3:
        plot_cnt = 0
        fig = plt.figure()
        ax = fig.add_subplot(111)

        # Loop through the sub-bars to plot in the input list
        for i in range(len(y_lists)):

            sub_bars = y_lists[i] 

            #format the subbar plot locations about the x-axis
            indices = range(len(sub_bars))
            #width_i = np.min(np.diff(indices))/3.
            width = np.min(np.diff(indices))/float(len(sub_bars)+2)

            #auto range width
            #width = indices
            #         iteration   Centers the bargraph (.5)      
            width_i = (width*i) - .5
            
            ax.bar(indices+width_i,sub_bars,width,color=colors[plot_cnt],tick_label=x_markers, label=sub_bar_labels[i]) 
 
            #check if out of line colors and loop back if so
            if plot_cnt >=len(colors)-1:
                plot_cnt = 0
            else:
                plot_cnt += 1
       
        #format the plot
        if not y_range == [0,0]:
            plt.ylim(y_range)
        plt.xlabel(x_label)
        plt.ylabel(y_label)
        plt.title(title)
        plt.legend(loc='center left', bbox_to_anchor=(1, 0.5))

        # Save graph
        print "Outputting " + graph_path
        plt.savefig(graph_path, bbox_inches = "tight")
        plt.clf()
    else:
        raise Exception("Must be using Python 2. I haven't made this work with Python 3 yet")

##############################################################################
#MAIN
##############################################################################

#function test lists
#sblabels_test = [    "subbar1"        , "subbar2",  "subbar3"  ,   "subbar4" ,  "subbar5 "]
#Y_lists_test  = [[2 ,   3 ,  4  , 5  ],[7,8,9,10],[15,16,17,18],[20,30,40,50],[55,60,65,70]]
#x_label_test  = ["5", "10", "15","20"]

#plot_multibar(Y_lists_test, x_label_test, sblabels_test, y_range=[-10,110])