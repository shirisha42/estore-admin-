pipeline{
    agent any
    tools{
        // specify the git installation
        git 'MyGitInstallation'
        
    }
    stages{
        stage('Build') {
            steps{
                //get code from github repository
                checkout scm

                //run maven wrapper commands
                sh "./mvnw clean compile"

                echo 'Building the project with maven compile'
            }
        }

        stage('Test') {
            steps{

                //run maven wrapper commands

                sh "./mvnw clean test"

                echo 'Testing the project with maven test'

            }
        }

        stage('Package') {
            steps{

                //run maven wrapper commands

                sh "./mvnw clean package"

                echo 'packaging the project with maven package'

            }
        }


    }
}
