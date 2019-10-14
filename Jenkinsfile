pipeline {
    agent {
        docker{
            image "ruby:alpine" //distribuição linux leve
        }
    } 
    stages {
        stage("Build"){
            steps {
                sh "chmod +x build/alpine.sh" //permissão de execução
                sh "./build/alpine.sh"
                sh "bundle install"
            }
        }
        stage("Tests"){
            steps {
                 sh "bundle exec cucumber -p ci"
            }
        }
    }
}