# Fourth Brain 2021 June Midterm

## Midterm project for the FourthBrain MLOps June 2021 Cohort

### [ML Classification Deployment in Cloud Project](https://docs.google.com/document/d/1jXX2aPgOiHvxSdQ-l14hzEP652qbIzDXcgmAoaVitUc/edit?usp=sharing)

## Deployment Notes
Train Models using Sato_4B_Midterm_Classifier_Trainer_and_GCP_Uploader.ipynb in free-to-use [Google Colab](https://colab.research.google.com/).

Run Model using Sato_4B_Midterm_Classifier_Predict.ipynb in Google Cloud Platform.

## VGG16 Model Trained on [CIFAR 100 Dataset](https://www.cs.toronto.edu/~kriz/cifar.html)
This data set contains 50,000 \[32x32\] RGB images with 100 labels. This data set can be loaded directly into [Python using the keras library] (https://keras.io/api/datasets/cifar100/).

## Tasks Intended to be Addressed in this Repository
1. Create a ML model that performs image classification for the CIFAR100 data set. Your final outcome should result in 100 output labels (as shown in the CIFAR 100 data set). You can apply transfer learning to reuse existing model weights. Provide clear documentation of the number of classes, samples and data distributions (Exploratory data analysis) with this task.
2. Setup online ML monitoring for the Deployed model (WANDB or Grafana). Report the metrics that you will monitor for your task.
3. Package and Dockerize the ML model using Flask or FastAPI. You may design any front end or may not use a front end at all as you see fit and deploy to GCP or AWS.
4. Create a Continuous deployment pipeline for the application so that updated models can be readily deployed.

<<<<<<< HEAD
## How this repository works
=======
## How this Repository Addresses Task
Sato_4B_Midterm_Classifier_Trainer_and_GCP_Uploader.ipynb addresses tasks 1 and 4. Task 4 is a little more manual than a proper ML CD at the moment.

Sato_4B_Midterm_Classifier_Predict.ipynb uses Weignts and Balances to display performance metrics for runtime monitoring (Task 2) and uses FastAPI on GCP (Task 3).
>>>>>>> 333bf56e421e73b62126d8c35cd558dde825d122
