

node {
	stage('Checkout') {
		checkout scm
	}
}

parallel Stage1: {
	node {
		stage('Build') {
			echo 'Build linux'
		}
		stage('Tests') {
			echo 'Tests linux'
		}
		stage('Static analysis') {
			echo 'Static analysis linux'
		}
	}
},
Stage2: {
	node {
		stage('Build') {
			echo 'Build linux'
		}
		stage('Tests') {
			echo 'Tests linux'
		}
		stage('Static analysis') {
			echo 'Static analysis linux'
		}
	}
}


node {
	stage('Checkout') {
		echo 'kunaljha5'
	}
}
