pipeline {
    agent 
    {
        docker 
        {
            image 'maven:3.6.3'
        }
    }

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
              	    sh 'mvn --version'
                    echo 'Building stage'
                 }
	 }

	 stage('Testing')
	 {
           	 steps 
		{
              	  echo 'Testing stage'

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

