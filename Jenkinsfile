pipeline{
    agent any 
    steps{
        stage{'Git Checkout'}{
            steps{
            script{
               git branch: 'main', url: 'https://github.com/shubhammg98/jenkins.git'
            }
        }
            
        }
        
    }
}