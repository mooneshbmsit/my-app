node{
    stage('SCM checkout'){
        git credentialsId: 'git-credentials', url: 'https://github.com/mooneshbmsit/my-app.git'
    }
    stage('mvn packaging'){
        sh 'mvn clean package'
    }
    stage('Build Docker image'){
        sh 'docker build -t mooneshbmsit/my-app .'
    }
    stage('Upload Image to DockerHub'){
        withCredentials([string(credentialsId: 'docker-pwd', variable: 'DockerHubPwd')]) {
            sh "docker login -u mooneshbmsit -p ${DockerHubPwd}"
    }
        sh 'docker push mooneshbmsit/my-app'
    }
    stage('Pull and run image'){
        sh '/tmp/remove_docker.sh'
    }
    
}
