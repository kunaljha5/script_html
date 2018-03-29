node {
	stage('Stage1') {
		echo "Git Fetch"
		git url: 'https://github.com/kunaljha5/script_html.git'
	}
}


parallel  Stage2: {
		
		node {
		stage ('Node1') {
				echo 'Checking Python avaibility on remote node1 and installing'
				sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.64.64 "./script1.sh"'
				}

		}
	},
Stage3: {
		node {
		stage ('Node2') {
			   	echo 'Checking Python avaibility on remote node2 and installing'
			   	sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.66.47 "./script1.sh"'
				}
		}
	},
Stage4: {
		node {
		stage ('Node3') {
		   		echo 'Checking Python avaibility on remote node3 and installing'
		   		sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.44.198 "./script1.sh"'
				}
		}
}

node {
	stage('Checkout') {
		echo 'kunaljha5'
	}
}

parallel  Stag2: {

		node {
		stage ('Node1') {
		echo 'Checking apache2 and installing on remote node1'
		sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.64.64 "./script2.sh"'
				}
		}
	},
Stag3: {
		node {
		stage ('Node2') {
		echo 'Checking apache2 and installing on remote node2'
		sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.66.47 "./script2.sh"'
				}
		}
	},
Stag4: {
		node {
		stage ('Node3') { 
		echo 'Checking apache2 and installing on remote node3'
		sh 'ssh -i /var/lib/jenkins/secrets/learning1.pem ubuntu@172.31.44.198 "./script2.sh"'
				}
		}
}
