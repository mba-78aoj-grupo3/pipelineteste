pipeline {
  environment {
    registry = "findfixer/ms-help-desk"
    registryCredential = 'DockerHub'
    dockerImage = ''
  }
  agent any
  tools {nodejs "node" }
    
  stages {
       
      
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":latest"
        }
      }
    }
  }
}
