[![CircleCI](https://dl.circleci.com/status-badge/img/gh/KateM27/ML-Microservice-Project/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/KateM27/ML-Microservice-Project/tree/main)

## Project Overview

Provided: A pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project operationalizes a Python flask app that serves out predictions (inference) about housing prices through API calls. The project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

Files in the repo include:
* `Dockerfile` - it builds a docker container
* `Makefile` - Defines tasks to install, test, and lint code
* `app.py` - main file that serves out predictions
* `.sh` files - scripts that run the project on docker and kubernetes and also upload images to docker

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it.
```bash
python3 -m pip install --user virtualenv
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Install
* Docker
* Hadolint
* Minikube

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
