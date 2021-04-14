**Conde Nast Demo Project**

This is "Hello World" nodejs web application project.

The application is developed in nodejs.
Manually trigger the Jenkins build job to start pipeline.

Stage 1. Download the latest code from GIT repository.
Stage 2: Static code quality check, will be performed via SonarQube. # Yet to do
Stage 3: building the package using "_npm install_".
Stage 4: Build the Docker Image for the application.
Stage 5: Push the newly built Docker Image to the Docker hub repository.
Stage 6: Deploy the newly built Docker Image to Kubernetes.

Note: This demo project will not illustration all the security and best practices.
