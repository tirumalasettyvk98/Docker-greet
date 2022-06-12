

pipeline {
    // agent 
    // {
    //     docker 
    //     {
    //         image 'maven:3.6.3'
    //     }
    // }

     agent any

    environment
    {
        mavenHome= tool 'myMaven'
        dockerHome= tool 'myDocker'

        PATH= "$mavenHome/bin:$dockerHome/bin:$PATH"
        

    }

    stages
 {


     stage('checkout')
	 {
           	    
                steps 
		        {
              	    sh 'mvn --version'
                    sh 'docker version'
                     echo "Building stage"
                    
                    // echo "$PATH"
                    // echo "Build_number $env.BUILD_NUMBER"
                    // echo "Build_id $env.BUILD_ID"
                    // echo "job-name $env.JOB_NAME"
                    echo "BUILD_TAG $env.BUILD_TAG"
                    // echo "BUILD_url $env.BUILD_URL"



                 }
        }

          stage('Compile')
         {
                steps
                {
                    sh 'mvn clean compile'
                }
            
         }

          stage('Test')
         {
                steps
                {
                        sh 'mvn test'
                } 
         }

          stage('Package')
         {
                steps
                {
                        sh 'mvn package -DskipTests'
                        
                } 
         }

          stage('Building Docker Image')
          {
            steps
            {
                echo "Building Docker Image"
               
                script
                {
                    dockerImage = docker.build("tirumalasettyvk98/${env.JOB_NAME}:${env.BUILD_TAG}")
                }
            }
        }

        stage('Pushing Docker Image')
        {
            steps
            {
                echo "Pushing Docker Image"
              
                script
                {
                    docker.withRegistry('','dockerhub')
                    {
                    dockerImage.push()
                    dockerImage.push('latest')
                    }
                    
                                       
                }
            }
        }
	}

    
       
     

	 

	





    

    post
    {
        always
        {
            echo "I am always to run this pipeline"
        }

        success
        {
            echo "the pipeline is success";
        }

        failure
        {
            echo "there is some failure issues"
        }
    }
}

