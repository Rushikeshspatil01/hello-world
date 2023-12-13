pipeline {
    agent any
 
    stages {
        stage('Checkout') {
            steps {
                script {
                    // Checkout your Git repository
                    checkout scm
                }
            }
        }
 
        stage('Build') {
            steps {
                script {
                    // Build using Maven
                    sh 'mvn clean install'
                }
            }
        }
 
stage('Deploy') {
            steps {
                script {
                    def targetDirectory = "/var/lib/jenkins/workspace/hello world pipeline proj/tomcat/webapps/"
                    
                    // Ensure the target directory exists
                    sh "mkdir -p ${targetDirectory}"

                    // Copy the .war file to the target directory
                    sh "cp /var/lib/jenkins/workspace/hello world pipeline proj/webapp/target/*.war ${targetDirectory}"
                }
            }
        }
    }
}
// /var/lib/jenkins/workspace/hello world pipeline proj/webapp/target
