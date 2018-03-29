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
},
Linux: {
	node('Linux') {
		stage('Build1') {
			echo 'Build linux1'
		}
		stage('Tests') {
			echo 'Tests linux1'
		}
		stage('Static analysis') {
			echo 'Static analysis linux1'
		}
	}
}
