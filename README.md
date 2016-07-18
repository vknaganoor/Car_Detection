# Car_Detection
It consists of the codes for Automatic Car Detection for Driver Assistance using Deep Convnets 

##Data Extraction
###Input
The data being used is the TME vehicular classification dataset.</br>
Negatives_Extract.m is a the code which extracts random patches not containing the vehicle.</br>
Positives_Extract.m is a the code that extracts the positive patches containing the vehicle from the annoted data created from the laser scanner.

##Retraining
Retrain.py is the modified version of the retraining code outsourced by Google.</br>
It outputs the the tensorflow graph after fine-tuning the inception Network 

##Annotation
####Classify.py 
Creates a csv file which is used for the creating the bounding boxes for a given image.
####bounding_box.py 
Creates the bounding boxes for the given image from the csv file generated.
