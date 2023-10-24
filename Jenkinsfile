@Library('jenkins_shared_library') _
pipeline{
    agent any
    parameters{
        choice(name: 'action',choices: 'create/ndelete', description: 'choose create /Destroy')
    } 
    stages{
        //git checkout
        
        stage('Git Checkout'){
        when{expression {params.action == 'create'}}    
            steps{
            gitCheckout(
                    branch: "main",
                    url: 'https://github.com/shubhammg98/jenkins.git'
            )
            }
            
        }
        stage('Unit Test Maven'){
        when{expression {params.action == 'create'}}
            steps{
                script{
                    mvnTest()
                }
            }
        }
        stage('Integration Test Maven'){
        when{expression {params.action == 'create'}}    
            steps{
                script{
                    mvnintegrationTest()
                }
            }
        }
        stage('static code analysis'){
        when{expression {params.action == 'create'}}   
            steps{
                script{
                    def SonarqubecredentialsId = 'sonarqube-api'
                    staticcodeanalysis(SonarqubecredentialsId)
                }
            }
        }
    }       
}
        
    
