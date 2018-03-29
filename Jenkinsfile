pipeline {
    agent none
    stages {

   	stage ('Stage 0') {
         echo "Git Fetch"
   		git url: 'https://github.com/kunaljha5/script_html.git'
			}
   	stage ('Stage 1') {
   		echo 'Transfering dependent scripts to remote nodes'
   		sh './script5.sh'
			}
   	stage ('Stage 2') {
			parallel{
				stage ('Node1') {
					   	echo 'Checking Python avaibility on remote node1 and installing'
					   	sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.64.64 "./script1.sh"'
						}
				stage ('Node2') {
					   	echo 'Checking Python avaibility on remote node2 and installing'
					   	sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.66.47 "./script1.sh"'

						}
				stage ('Node3') {
				   		echo 'Checking Python avaibility on remote node3 and installing'
				   		sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.44.198 "./script1.sh"'
						}
				}
			}
			
   	stage ('Stage 3') {
   		echo 'Checking apache2 and installing on remote node '
   		sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.64.64 "./script2.sh"'
   		sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.66.47 "./script2.sh"'
   		sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.44.198 "./script2.sh"'
   		}
   	stage ('Stage 4') {
   		echo 'Deploying remote nodes html page'
   		sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.64.64 "./script3.sh"'
   		sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.66.47 "./script3.sh"'
   		sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.44.198 "./script3.sh"'
   		}
   	stage ('Stage 5') {
   		echo 'Testing the remote nodes content as per thier node type'
   		sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.64.64 "./script4.sh"'
   		sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.66.47 "./script4.sh"'
   		sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.44.198 "./script4.sh"'
   		}
  
}
}
