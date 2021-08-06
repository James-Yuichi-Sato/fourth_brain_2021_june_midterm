# Fourth Brain 2021 June Midterm

## Midterm project for the FourthBrain MLOps June 2021 Cohort

### [ML Classification Deployment in Cloud Project](https://docs.google.com/document/d/1jXX2aPgOiHvxSdQ-l14hzEP652qbIzDXcgmAoaVitUc/edit?usp=sharing)

## Deployment Notes
Train Models using `Sato_4B_Midterm_Classifier_Trainer_and_GCP_Uploader.ipynb` in free-to-use [Google Colab](https://colab.research.google.com/).

Run Model using `Sato_4B_Midterm_Classifier_Deploy_and_Monitor.ipynb` in Google Cloud Platform in JupyterLab on GPU enabled machine.

## How to Use this System
1. Use `Sato_4B_Midterm_Classifier_Trainer_and_GCP_Uploader.ipynb` to build a model either from scratch or from pretrained weights in the `model` folder.
2. Use the **Upload Model to GCP** section of `Sato_4B_Midterm_Classifier_Trainer_and_GCP_Uploader.ipynb` to download old models from and upload new models to your GCP storage buckets for Cloud serving.
3. Open up `Sato_4B_Midterm_Classifier_Deploy_and_Monitor.ipynb` in Google Cloud Platform in JupyterLab on GPU enabled machine.
4. Running `Sato_4B_Midterm_Classifier_Deploy_and_Monitor.ipynb` will run an ngrok web instance that will host FastAPI
5. You can interact with the ML system on the ngrok interface on the cloud with the following commands
  - `/reload_model` reloads the model pointed to by `model_dir` in the notebook
  - `/change_model` changes `model_dir` to the directory you input as string and attempts to load the model
  - `/predict_single` takes an image input in either png or jpg format and outputs a string prediction per the CIFAR100 dataset.

## System Monitoring
`Sato_4B_Midterm_Classifier_Deploy_and_Monitor.ipynb` also generates a Weights and Biases project mlops-midterm.
You can create a free account for non-commercial monitoring at wandb.ai
The current system monitors the average integer output for entire runtime of the system, average prediction time for entire runtime of the system, most occuring output, individual outputs, and individual prediction time. These metrics should be the basics needed to detect data and concept skew for the model.

## VGG16 Model Trained on [CIFAR 100 Dataset](https://www.cs.toronto.edu/~kriz/cifar.html)
This data set contains 50,000 \[32x32\] RGB images with 100 labels. This data set can be loaded directly into [Python using the keras library] (https://keras.io/api/datasets/cifar100/).

## Tasks Intended to be Addressed in this Repository
1. Create a ML model that performs image classification for the CIFAR100 data set. Your final outcome should result in 100 output labels (as shown in the CIFAR 100 data set). You can apply transfer learning to reuse existing model weights. Provide clear documentation of the number of classes, samples and data distributions (Exploratory data analysis) with this task.
2. Setup online ML monitoring for the Deployed model (WANDB or Grafana). Report the metrics that you will monitor for your task.
3. Package and Dockerize the ML model using Flask or FastAPI. You may design any front end or may not use a front end at all as you see fit and deploy to GCP or AWS.
4. Create a Continuous deployment pipeline for the application so that updated models can be readily deployed.

## How this Repository Addresses Task
Sato_4B_Midterm_Classifier_Trainer_and_GCP_Uploader.ipynb addresses tasks 1 and 4. Task 4 is a little more manual than a proper ML CD at the moment.

Sato_4B_Midterm_Classifier_Deploy_and_Monitor.ipynb uses Weignts and Balances to display performance metrics for runtime monitoring (Task 2) and uses FastAPI on GCP (Task 3).
