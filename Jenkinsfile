node {
	stage('Stage1') {
		echo "Git Fetch"
		git url: 'https://github.com/kunaljha5/script_html.git'
	}
}


parallel  Stage2: {
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

