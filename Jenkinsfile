pipeline {
    agent any

    stages
 {

        stage('Hello')
	 {
           	 steps 
		{
              	  echo 'Hello World'

          	  }
	 }

	 stage('Build')
	 {
           	 steps 
		{
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

	 stage('Deployement')
	 {
           	 steps 
		{
              	  echo 'Deployment Stage'

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

