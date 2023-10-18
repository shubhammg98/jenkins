@Library('jenkins_shared_library') _
pipeline{
    agent any 
    stages{
        //git checkout
        stage('Git Checkout'){
            steps{
            gitCheckout(
                    branch: "main",
                    url: 'https://github.com/shubhammg98/jenkins.git'
            )
            }
            
        }
        stage('Unit Test Maven'){
            steps{
                script{
                    mvnTest()
                }
            }
        }
    }       
}
        
    
