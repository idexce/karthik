node {
		stage('pulling code from git'){
		 checkout scm
		}
    stage('Build Image'){
      	sh 'sudo docker build -t idexcel-interns/karthik:${BUILD_NUMBER} .'
      	sh 'docker tag idexcel-interns/karthik:${BUILD_NUMBER} idexcelinterns/karthik:latest'
    }
    stage('Push Image'){
        sh 'docker push idexcelinterns/karthik:latest'
        docker.withRegistry('https://registry.hub.docker.com', 'Docker-Hub-Credentials') {

    }
 }
