pipeline {
  agent any
    
  tools {nodejs "Node 14.15.4"}
    
  stages {

    stage('Test') {
      steps {
        sh 'yarn install'
        sh 'yarn test'
      }
    }
  
  }

  post {
    success {
      mail bcc: '', body: 'Any Test EMail', cc: '', from: 'horacioss2013@gmail.com', replyTo: '', subject: 'Tests over Tas', to: 'horaioss2013@gmail.com'
    }
    failure {
      slackSend channel: '#task-manager', message: 'Tests Failed'
      mail bcc: '', body: 'Any Test EMail', cc: '', from: 'horacioss2013@gmail.com', replyTo: '', subject: 'Tests over Tas', to: 'horaioss2013@gmail.com'
    }
}
}
