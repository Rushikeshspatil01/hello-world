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
                    // Copy artifact to Tomcat webapps folder
                    sh "cp /var/lib/jenkins/workspace/hello world pipeline proj/webapp/target/*.war /var/lib/jenkins/workspace/hello world pipeline proj/tomcat/webapps/."
 
                    // Restart Tomcat
                    sh '/var/lib/jenkins/workspace/hello world pipeline proj/tomcat/shutdown.sh'
                    sh '/var/lib/jenkins/workspace/hello world pipeline proj/tomcat/bin/startup.sh'
                }
            }
        }
    }
}
// /var/lib/jenkins/workspace/hello world pipeline proj/webapp/target
