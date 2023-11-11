@Library('jenkins_shared_library') _
pipeline{
    agent any
    parameters{
        choice(name: 'action',choices: 'create\ndelete', description: 'choose create /Destroy')
        string(name:"imageame",description:"tag of the docker build",defaultValue:"javaapp")
        string(name:"apptag",description:"name of the application",defaultValue:"v1")
         //string(name:"DockerHubUser",description:"name of the application",defaultValue:"shubhamdevops")
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
        //stage('static code analysis'){
        //when{expression {params.action == 'create'}}   
           // steps{
                //script{
                   // def SonarqubecredentialsId = 'sonarqube-key'
                    //staticcodeanalysis(SonarqubecredentialsId)
                //}
            //}
       // }
         
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
                    dockerbuild("${params.Imagename}","${params.Imagetag}","${params.DockerHubUser}")
                }
            }   
        }
        //stage('Docker Image Push :DockerHub'){
          //when{expression {params.action == 'create'}}   
            //steps{
              //  script{
                //    dockerimagepush("${params.Imagename}","${params.Imagetag}","${params.DockerHubUser}")
                //}
            //}
        //}
    }       
}
        
    
