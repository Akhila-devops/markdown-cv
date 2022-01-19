pipeline {
agent {
label 'build node'
}

stages {

stage ('Checkout') 
{
steps
    {
    
        checkout scm
        
    }
    
}
stage ('build') 
{
    steps
    {
       sh "cd /home/ubuntu/workspace/pipeline/markdown-cv; mvn clean install" 
    }
}

   
stage ('dockerimageBuild')
    {
    steps
    {
        sh "cd /home/ubuntu/workspace/pipeline/markdown-cv; sudo docker build -t markdown-cv . " 
    }
}
     stage ('dockerimagepush ') 
{
    steps
    {
       sh "cd /home/ubuntu/workspace/pipeline/markdown-cv ; sudo  docker login -u username -p password "
        sh "cd /home/ubuntu/workspace/pipeline/markdown-cv ; sudo docker tag markdown-cv username/v1 "
        sh "cd /home/ubuntu/workspace/pipeline/markdown-cv ; sudo docker push username/v1 "
        
        
    }
}
    
    
stage ('deployment') 
    {
        steps {
             sh "docker run -it --name markdowncontainer -p 80:80 markdown-cv "
   
    }
}
}
}
    
