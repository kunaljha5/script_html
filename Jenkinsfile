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
windows: {
	node('Windows') {
		stage('Build') {
			echo 'Build windows'
		}
		stage('Tests') {
			echo 'Tests windows'
		}
		stage('Static analysis') {
			echo 'Static analysis windows'
		}
	}
}
