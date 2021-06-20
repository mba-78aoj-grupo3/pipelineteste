pipeline {
  environment {
    registry = "findfixer/ms-help-desk"
    registryCredential = 'DockerHub'
    dockerImage = ''
  }
  agent any
  tools {nodejs "node" }
    
  stages {
       
      
    stage('Install dependencies') {
      steps {
        sh 'npm install'
      }
    }
     
    stage('Test') {
      steps {
         sh 'npm test'
      }
    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
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
  }
} 