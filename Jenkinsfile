node {
	stage('Stage0') {
		echo "Git Fetch"
		git url: 'https://github.com/kunaljha5/script_html.git'
	}
}


parallel  Deployment_Node1: {
		
		node {
		stage ('Node1') {
				echo 'Checking Python avaibility on remote node1 and installing'
				sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.64.64 "./script1.sh"'
				}

		}
	},
Deployment_Node2: {
		node {
		stage ('Node2') {
			   	echo 'Checking Python avaibility on remote node2 and installing'
			   	sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.66.47 "./script1.sh"'
				}
		}
	},
Deployment_Node3: {
		node {
		stage ('Node3') {
		   		echo 'Checking Python avaibility on remote node3 and installing'
		   		sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.44.198 "./script1.sh"'
				}
		}
}

node {
	stage('Deployment_Completed') {
		echo 'Deployment_Node1,Node2,Node3 Completed'
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


