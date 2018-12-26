node {
		stage('pulling code from git'){
		 checkout scm
		}
    stage('Build Image'){
        sh 'whoami'
      	sh 'sudo docker build -t idexcel-interns/karthik:${BUILD_NUMBER} .'
      	sh 'docker tag idexcel-interns/karthik:${BUILD_NUMBER} idexcel-interns/karthik:latest'
    }
 }
