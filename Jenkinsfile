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
    failure {
      // mail body: 'Tests over Task manager was Failed', from: 'horacioss2013@gmail.com', subject: 'Tests over Tas', to: 'horaioss2013@gmail.com'
      emailext body: '''$PROJECT_NAME - Build # $BUILD_NUMBER - $BUILD_STATUS:

Check console output at $BUILD_URL to view the results.''', subject: '$PROJECT_NAME - Build # $BUILD_NUMBER - $BUILD_STATUS!', to: 'horacioss2013@gmail.com'
    }
}
}
