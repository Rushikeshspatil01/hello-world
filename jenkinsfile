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
                    sh 'cp /var/lib/jenkins/workspace/hello world pipeline proj/webapp/target/*.war /home/azureuser/apache-tomcat-9.0.83/webapps/.'
 
                    // Restart Tomcat
                    sh '/usr/local/tomcat/bin/shutdown.sh'
                    sh '/usr/local/tomcat/bin/startup.sh'
                }
            }
        }
    }
}
// /var/lib/jenkins/workspace/hello world pipeline proj/webapp/target
