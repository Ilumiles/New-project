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
	 stage('Build Image') {
            steps {
                script { 
			echo " building the application"
			sh "docker build -t app:1.0 ."
			}
            }
		stage('Hello') {
            steps {
                echo  " deploying applications"            }
        }
    }
}

