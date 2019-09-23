node {
		stage('pulling code from git'){
		 checkout scm
		}
    stage('Build Image'){
      	sh 'sudo docker build -t idexce/karthik:${BUILD_NUMBER} .'
      	sh 'docker tag idexce/karthik:${BUILD_NUMBER} idexce/karthik:latest'
    }
    stage('Push Image'){
		    sh 'sudo docker login -u idexce -p kutty170065'
				sh 'docker push idexce/karthik:latest'
	 }
	stage('update imageurl in paramater store'){
	sh 'aws ssm put-parameter --name "parameter name" --value "a parameter value" --type String
	}
   stage('Force Deploy') {
                sh 'aws ecs update-service --region us-east-1 --cluster Dev-MicroservicesCluster --service Dev-microservices-FirstServiceStack-RD0WV46FLYEU-Service-1EB1C3NS7KDHJ --force-new-deployment'
        }
   stage('sleeping time') {
		sh 'sleep 600'
		
	}
   stage('service status') {
	        sh  'aws ecs wait services-stable --service Dev-microservices-FirstServiceStack-RD0WV46FLYEU-Service-1EB1C3NS7KDHJ --region us-east-1 --cluster Dev-MicroservicesCluster'
	}	
}

 }
