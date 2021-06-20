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
    stage('Push Image') {
      steps{
         script {
            docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
    stage('Remove Unused docker image') {
      steps{
        sh "docker rmi $registry:latest"
      }
    }        
  }
}
