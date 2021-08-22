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
      mail body: 'Test over TaskManger was Failed', from: 'Jenkins CI', subject: 'Test Over TaskManagerApp', to: 'horacioss2013@gmail.com'
    }
    failure {
      slackSend channel: '#task-manager', message: 'Tests Failed'
      mail body: 'Test over TaskManger was Failed', from: 'Jenkins CI', subject: 'Test Over TaskManagerApp', to: 'horacioss2013@gmail.com'
    }
}
}
