@Library('jenkins_shared_library') _
pipeline{
    agent any
    parameters{
        choice(name: 'action',choices: 'create\ndelete', description: 'choose create /Destroy')
        string(name:"Imagetag",description:"tag of the docker build",defaultvalue:"javaapp")
        string(name:"appname",description:"name of the application",defaultvalue:"javaapp")
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
                    def SonarqubecredentialsId = 'sonarqube-key'
                    staticcodeanalysis(SonarqubecredentialsId)
                }
            }
        }
         
          stage('maven build'){
          when{expression {params.action == 'create'}}   
            steps{
                script{
                    mvnbuild()
                }
            }
        }
         stage('Docker Image build'){
          when{expression {params.action == 'create'}}   
            steps{
                script{
                    dockerbuild("${params.Imagename},${params.Imagetag},${params.appname}")
                }
            }
        }
    }       
}
        
    
