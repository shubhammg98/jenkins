@Library('jenkins_shared_library') _
pipeline{
    agent any
    parameters{
        choice(name: 'action',choices: 'create/ndelete', description: 'choose craete /Destroy')
    } 
    stages{
        //git checkout
        
        stage('Git Checkout'){
        when{expression {param.action == 'create'}}    
            steps{
            gitCheckout(
                    branch: "main",
                    url: 'https://github.com/shubhammg98/jenkins.git'
            )
            }
            
        }
        stage('Unit Test Maven'){
        when{expression {param.action == 'create'}}
            steps{
                script{
                    mvnTest()
                }
            }
        }
        stage('Integration Test Maven'){
        when{expression {param.action == 'create'}}    
            steps{
                script{
                    mvnintegrationTest()
                }
            }
        }
        stage('static code analysis'){
            steps{
                script{
                    staticcodeanalysis()
                }
            }
        }
    }       
}
        
    
