pipeline {
    agent any
	tools {
		maven 'Maven'
		}
    stages {
        stage('Build Jar') {
            steps {
                script { 
			echo " building the application"
			sh "mvn package"
			}
            }
        }
	
		stage('Hello') {
            steps {
                echo  " deploying applications"            }
        }
    }
}

