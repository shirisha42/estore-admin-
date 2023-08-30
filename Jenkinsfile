pipeline {
    agent any
    tools {
            //specify the name of the  git installation configuration
            git 'MyGitInstallation'

            //specify the name of the Node.js installation
            nodejs 'NodeJS 14.20.1'
    } 
    stages {
        stage ('Source') {
            steps {
                //get the source code from a gith repository
                   checkout scm

                //run npm install to install node modules
                sh "npm install"
                sh "npm audit fix --force"
                echo 'Source Stage Finished'
            }
        }

        stage ('Build') {
            steps {
                script {
                    //display npm and node.js versions for debugging
                    sh "npm --version"
                    sh "node --version"

                    //update angular cli
                    sh "npm install -g @angular/cli@14.0.1"

                    //print the contents of ng binary directory for debugging
                    sh "ls ${env.WORKSPACE}/node_modules/@angular/cli/bin"

                    //use npm run to execute the local angular cli
                    sh "npm run ng version"
                    sh "npm run ng build"
                }
                
                echo 'Build Stage Finished'
            }
        }
    }
}