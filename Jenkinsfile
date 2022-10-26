pipeline {
    agent { label 'NODE' }
    stages {
        stage('vcs') {
            steps {
                git url: 'https://github.com/Nagaraju11111/learninggit.git',
                    branch: 'main'
            }
        }
        stage('shell') {
            steps {
                sh 'sh activity1.sh'
            }
        }
    }
}