pipeline {
    agent {
        label "agentVM1"
    }
    tools {
    nodejs 'NodeJS'
    }

    stages {
        stage("checkout") {
            steps {
                checkout scm
            }
        }
        stage("Check for npm and others version") {
            parallel("compressing") {
                stage("clean-css") {
                    steps {
                        nodejs('NodeJS') {
                            sh "cleancss -b www/min -o www/css"
                        }
                    }
                }
                stage("uglify-js") {
                    steps {
                        nodejs('NodeJS') {
                            println  "Hello World"
                        }
                        sh "tar --exclude='.git' --exclude='www/js' --exclude='www/css' -cf result.tar www/"
                    }
                }    
            }
        }
        stage("Artifacts") {
            steps {
            archiveArtifacts allowEmptyArchive: true, artifacts: '**/*.tar', fingerprint: true, followSymlinks: false
            }
        }
    }
}
