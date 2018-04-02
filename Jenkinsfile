node {
	stage('Stage0') {
		echo "Git Fetch"
		git url: 'https://github.com/kunaljha5/script_html.git'
	}
}


parallel  Dev_Deploy: {
		
		node {
   			stage('Deploy_env') {
   				echo 'Transfering dependent scripts to remote node1'
   				sh './script5.sh'
			}
		}
	},
Python: {
		node {
			stage ('py_Node1') {
				echo 'Checking Python avaibility on remote node1 and installing'
				sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.64.64 "./script1.sh"'
				}
		}
	},
Http: {
		node {
			stage ('http_Node1') {
				echo 'Checking apache2 and installing on remote node1'
				sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.64.64 "./script2.sh"'
				}
		}
},
Html: {
		node {
			stage ('html_Node1') {
   				echo 'Deploying remote node1 html page'
				sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.64.64 "./script3.sh"'
				}
		}
},

Testing: {
		node {
			stage ('test_Node1') {
				echo 'Testing the remote node1 content as per thier node type'
				sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.64.64 "./script4.sh"'
				}
		}
}


node {
	stage('dev_result') {
		echo 'Development Node1 Build, Deployment, Test Completed'
	}
}



parallel  Test_Deploy: {
		
		node {
   			stage('Deploy_env') {
   				echo 'Transfering dependent scripts to remote node2'
   				sh './script5.sh'
			}
		}
	},
Python: {
		node {
			stage ('py_Node2') {
				echo 'Checking Python avaibility on remote node2 and installing'
				sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.66.47 "./script1.sh"'
				}
		}
	},
Http: {
		node {
			stage ('http_Node2') {
				echo 'Checking apache2 and installing on remote node2'
				sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.66.47 "./script2.sh"'
				}
		}
},
Html: {
		node {
			stage ('html_Node2') {
   				echo 'Deploying remote node2 html page'
				sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.66.47 "./script3.sh"'
				}
		}
},

Tesing: {
		node {
			stage ('test_Node2') {
				echo 'Testing the remote node2 content as per thier node type'
				sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.66.47 "./script4.sh"'
				}
		}
}


node {
	stage('test_result') {
		echo 'Development Node2 Build, Deployment, Test Completed'
	}
}






parallel  Prod_Deploy: {
		
		node {
   			stage('Deploy_env') {
   				echo 'Transfering dependent scripts to remote node3'
   				sh './script5.sh'
			}
		}
	},
Python: {
		node {
			stage ('py_Node3') {
				echo 'Checking Python avaibility on remote node3 and installing'
				sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.44.198 "./script1.sh"'
				}
		}
	},
Http: {
		node {
			stage ('http_Node3') {
				echo 'Checking apache2 and installing on remote node1'
				sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.44.198 "./script2.sh"'
				}
		}
},
Html: {
		node {
			stage ('html_Node3') {
   				echo 'Deploying remote node3 html page'
				sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.44.198 "./script3.sh"'
				}
		}
},

Tesing: {
		node {
			stage ('test_Node3') {
				echo 'Testing the remote node3 content as per thier node type'
				sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.44.198 "./script4.sh"'
				}
		}
}


node {
	stage('prod_result') {
		echo 'Development Node3 Build, Deployment, Test Completed'
	}
}


