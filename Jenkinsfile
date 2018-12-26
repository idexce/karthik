pipeline {
	agent none
	stages {
		stage('pulling code from git')
			checkout scm
		stage('Build Image') {
			agent any
			steps {
				sh 'docker build -t saikumar2305/helloworld:${BUILD_NUMBER} .'
				sh 'docker tag saikumar2305/helloworld:${BUILD_NUMBER} saikumar2305/helloworld:latest'
			}
		}
		stage('Deploy Image') {
			agent any
			steps {
				sh 'docker push saikumar2305/helloworld:latest'
			}
		}
	}
}
