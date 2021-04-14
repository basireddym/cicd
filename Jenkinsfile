node{

    stage("GIT Clone"){
       git branch: 'main', credentialsId: 'GIT_REPO_CREDS', url: 'https://github.com/basireddym/cicd.git'
    }

    stage('Quality check'){
        // code quality check via SonarQube
    }
    
    
    stage("Nodejs Clean Build"){
        sh 'npm install'
        sh 'echo "clean build"'
    }
    
    stage("Build Docker Image"){
        sh 'echo "build docker image"'
        sh 'docker build -t basireddym/nodejs .'
    }

    
    stage("Docker Push"){
            withCredentials([string(credentialsId: 'DOCKER_HUB_CREDENTIAL', variable: '')]) {
            sh 'docker login -u basireddym -p ${DOCKER_HUB_CREDENTIAL}'
        }
        sh 'docker push basireddym/nodejs '
    }
    
    stage("Deploy Application on k8s cluster"){
        kubernetesDeploy(
                configs: ' nodejs-deployment.yml',
                kubeconfigId: 'KUBERNETES_CLUSTER_CONFIG'
            )
    }
    
}
