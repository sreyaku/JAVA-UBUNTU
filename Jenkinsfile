pipeline{
    agent any
    stages{
        stage('gitclone'){
            agent any
            steps{
                git credentialsId: 'bc010765-2802-482d-8502-5f629f70228a', url: 'https://github.com/sreyaku/JAVA-UBUNTU.git'
            }
        }
    
        stage(deploy){
            agent any 
            steps{
   
              sh '''
              sudo docker build -t webimage:$BUILD_NUMBER .
              sudo docker container run -itd --name webserver$BUILD_NUMBER -p 8082 webimage:$BUILD_NUMBER'''
            }
            
        
    }    
    }
    }
