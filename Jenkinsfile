node {
	stage('Checkout') {
		checkout scm
	}
}

parallel linux: {
	node('Linux') {
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
