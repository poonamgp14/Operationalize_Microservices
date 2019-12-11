[![CircleCI](https://circleci.com/gh/poonamgp14/Operationalize_Microservices.svg?style=svg)](https://circleci.com/gh/poonamgp14/Operationalize_Microservices)

## Project Overview

This project operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling. [Kubernetes](https://kubernetes.io/) is used for orchestration and management of containerized [Docker] application. [Minikube] is used for local deployment of kubernetes that can run anywhere. Minikube creates a VM on your local machine and deploys a simple cluster containing only one node. 

CircleCI is integrated with Github repo's default branch and lints the project file as per the config.yml file on every push to default branch.

### Instructions on how to run the project
---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Upload application image to upload hub `upload_docker.sh`
4. Run in Kubernetes:  `./run_kubernetes.sh`
5. Make a housing prediction `.make_prediction.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally via Minikube
* Create Flask app in Container
* Run via kubectl
