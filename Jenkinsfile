node {
		stage('pulling code from git'){
		 checkout scm
		}
    stage('Build Image'){
      	sh 'docker build -t saikumar2305/helloworld:${BUILD_NUMBER} .'
      	sh 'docker tag saikumar2305/helloworld:${BUILD_NUMBER} saikumar2305/helloworld:latest'
    }
 }
