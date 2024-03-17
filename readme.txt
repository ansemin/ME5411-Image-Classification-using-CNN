Robot Vision and AI Final Project - Group 17
-------------------------------------------------------
Overview
This README outlines the structure and usage of files and folders for the final project. Our project encompasses various tasks related to robot vision and AI, utilizing Convolutional Neural Networks (CNN) and Support Vector Machines (SVM).
-----------------------------------------------------------------
File and Folder Structure
Main Execution File
------------------------------------------------------------------------
main.mlx: Open and run this file to visualize the results for tasks 1-7. Make sure to add your path.
----------------------------------------------
Reports
Final_Report_Group_17.pdf: Contains the comprehensive report of our project findings and analyses.

-------------------------------------------------
Data Folders
Segmented_dataset: Contains segmented characters from Part 1, which are used for model validation in Part 2.
p_dataset_6: Houses the dataset used in the project.

----------------------------------------------------------
Model Files

CNN_Trained_Model.mat: Contains the trained CNN model.

SVM_Trained_Model.mat: Contains the trained SVM model.

Experimentation and Utility Scripts
CNN_resize.mlx: A script for resizing input images, utilized in task 7 for experimenting with different image input sizes.

Functionality Folders
Function: Includes scripts like an average filter and rotating mask used in Part 1.

Maxepoch: Contains MATLAB data files for various epochs experimented with during the project.

SVM Feature Extraction Methods: Includes SVM_LBP, SVM_PCA, SVM_Sobel.mlx files for experimenting with non-HOG feature extraction methods in task 8, along with the corresponding MATLAB data.
------------------------------------------------------
Experimental Results Folders

Padding, Resizing, Optimizers: These folders contain MATLAB data files obtained from various experiments conducted in task 7.

--------------------------------------------------------
Instructions for Use

Running the Main Script: Start by running main.mlx to view the results for each task. Ensure your MATLAB path is correctly set to include the necessary files.

Referencing the Report: For detailed explanations and findings, refer to Final_Report_Group_17.pdf.

Utilizing Data and Models: Access the Segmented_dataset for pre-processed characters and use the .mat files for CNN and SVM models to replicate or extend our experiments.

Experimenting with Features and Parameters: Use the scripts in Function, Maxepoch, and SVM Feature Extraction Methods folders for additional experimentation and understanding the impact of various parameters and features on the model's performance.