@Library('jenkins_shared_library') _
pipeline{
    agent any 
    stages{
        //git checkout
        stage('Git Checkout'){
            steps{
            gitCheckout{
                    git branch: "main",
                    url: 'https://github.com/shubhammg98/jenkins.git'
            }
            }
            
               //git branch: 'main', url: 'https://github.com/shubhammg98/jenkins.git'    
        }
        stage('Unit Test maven'){
            steps{
                script(
                    mvnTest()
                )
            }

        }
    }
            
}
        
    
