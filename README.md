# Car_Detection
It consists of the codes for Automatic Car Detection for Driver Assistance using Deep Convnets 

##Data Extraction
###Input
Negatives_Extract.m is a MATLAB file which extract a random patches not containing the vehicle </br>
Positives_Extract.m is a MATLAB code that extracts the positive patches containing the vehicle from the data given in the 


##Annotation
####Classify.py 
Creates a csv file which is used for the creating the bounding boxes for a given image
####bounding_box.py 
Creates the bounding boxes for the given image from the csv file generated
