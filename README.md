Emotion Detector
This project is a deep learning-based emotion detector.

Local Setup
To run the application locally, follow these steps:

Clone the repository:
sh
git clone https://github.com/haythembekir20/emotion-detecter.git
cd emotion-detecter
Build the Docker image and run the container:
sh
docker build -t deeplearning:latest .
sudo docker run -d -p 5000:5000 deeplearning
Deployment in Google Cloud
To deploy the application in Google Cloud, follow these steps:

Tag and push the Docker image to Google Container Registry (GCR):
sh

export PROJECT_ID=emotion-detecter
docker build -t gcr.io/${PROJECT_ID}/deeplearning:v1 .
gcloud auth configure-docker
docker push gcr.io/${PROJECT_ID}/deeplearning:v1
Create a Kubernetes cluster and deploy the application:
sh

gcloud container clusters create emotion-detector-cluster --num-nodes=2
kubectl create deployment emotion-detector --image=gcr.io/emotion-detecter/deeplearning:v1
GitHub Actions CI/CD
To set up continuous integration and deployment using GitHub Actions:

Create a workflow file in .github/workflows directory (e.g., ci-cd.yaml) with the following content:
yaml
# Contents of ci-cd.yaml
Create a Kubernetes deployment file (kubernetes/deployment.yaml) to deploy the application:
yaml
# Contents of deployment.yaml
Commit these changes and push to your repository. The GitHub Action will automatically build and deploy your application to the Kubernetes cluster whenever you push to the main branch.
