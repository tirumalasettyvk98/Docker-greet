pipeline {
    // agent 
    // {
    //     docker 
    //     {
    //         image 'maven:3.6.3'
    //     }
    // }

     agent any

    // environment
    // {
    //     mavenHome= tool 'myMaven'
    //     dockerHome= tool 'myDocker'

    //     PATH= "$mavenHome/bin:$dockerHome/bin:$PATH"
        

    // }

    stages
 {


     stage('Build')
	 {
           	    // environment 
                // {
                //   HOME="."
                // }
                steps 
		        {
              	    // sh 'mvn --version'
                    // sh 'docker version'
                     echo "Building stage"
                    // echo "$PATH"
                    // echo "Build_number $env.BUILD_NUMBER"
                    // echo "Build_id $env.BUILD_ID"
                    // echo "job-name $env.JOB_NAME"
                    // echo "BUILD_TAG $env.BUILD_TAG"
                    // echo "BUILD_url $env.BUILD_URL"



                 }
	 }

	 

	





    }

    // post
    // {
    //     always
    //     {
    //         echo "I am always to run this pipeline"
    //     }

    //     success
    //     {
    //         echo "the pipeline is success";
    //     }

    //     failure
    //     {
    //         echo "there is some failure issues"
    //     }
    // }
}

