pipeline {
    agent any
    tools {
        maven 'Maven'
    }
    stages {
        stage("build jar") {
            steps {
                script {
                   echo "building the application"
				   sh 'mvn package'
                }
            }
        }
        stage("build image") {
            steps {
                script {
                   echo "building the docker image"
				   withCredentials([UsernamePassword(credentialsId: 'docker-hub-repo', passwordVariable: 'PASS', usernamePassword: 'USER')])
				    sh 'docker build -t ilumiles/my-repo-app:jma-2.0'
					sh "echo $PASS |docker login -u $USER –password-stdin"
					sh "docker push ilumiles/my-repo-app:jma-2.0"
                }
            }
        }
        stage("deploy") {
            steps {
                echo " deploying applications"
                }
            }
        }
    }
