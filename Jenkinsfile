node {
	stage('Stage0') {
		echo "Git Fetch"
		git url: 'https://github.com/kunaljha5/script_html.git'
	}
}


parallel  Dev_Deploy: {
		
		node {
   			stage('Deploy') {
   				echo 'Transfering dependent scripts to remote node'
   				sh './script5.sh'
			}
		}
	},
py_Verify: {
		node {
			stage ('py_Node1') {
				echo 'Checking Python avaibility on remote node1 and installing'
				sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.64.64 "./script1.sh"'
				}
		}
	},
http_Verify: {
		node {
			stage ('http_Node1') {
				echo 'Checking apache2 and installing on remote node1'
				sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.64.64 "./script2.sh"'
				}
		}
},
html_deploy: {
		node {
			stage ('html_Node1') {
   				echo 'Deploying remote nodes html page'
				sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.64.64 "./script3.sh"'
				}
		}
},

test_dev: {
		node {
			stage ('test_Node1') {
				echo 'Testing the remote nodes content as per thier node type'
				sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.64.64 "./script3.sh"'
				}
		}
}


node {
	stage('Dev_Result') {
		echo 'Development Node1 Build, Deployment, Test Completed'
	}
}

parallel  Verify_dev_node1: {

		node {
		stage ('Node1') {
		echo 'Checking apache2 and installing on remote node1'
		sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.64.64 "./script2.sh"'
				}
		}
	},
Verify_dev_node2: {
		node {
		stage ('Node2') {
		echo 'Checking apache2 and installing on remote node2'
		sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.66.47 "./script2.sh"'
				}
		}
	},
Verify_dev_node3: {
		node {
		stage ('Node3') { 
		echo 'Checking apache2 and installing on remote node3'
		sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.44.198 "./script2.sh"'
				}
		}
}


node {
	stage('Verification_Completed') {
		echo 'Verification_Node1,Node2,Node3 Completed'
	}
}


parallel  Verify_dev_node1: {

		node {
		stage ('Node1') {
		echo 'Checking apache2 and installing on remote node1'
		sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.64.64 "./script3.sh"'
				}
		}
	},
Verify_dev_node2: {
		node {
		stage ('Node2') {
		echo 'Checking apache2 and installing on remote node2'
		sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.66.47 "./script3.sh"'
				}
		}
	},
Verify_dev_node3: {
		node {
		stage ('Node3') { 
		echo 'Checking apache2 and installing on remote node3'
		sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.44.198 "./script3.sh"'
				}
		}
}


