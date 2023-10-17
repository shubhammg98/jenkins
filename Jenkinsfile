pipeline{
    agent any 
    stages{
        stage('Git Checkout'){
            steps{
            script{
                gitCheckout(
                    branch:"main"
                    url:"https://github.com/shubhammg98/jenkins.git"
                )
               //git branch: 'main', url: 'https://github.com/shubhammg98/jenkins.git'    
            }
        }
            
        }
        
    }
}