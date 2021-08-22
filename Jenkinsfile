pipeline {
  agent any
    
  tools {nodejs "Node 14.15.4"}
    
  stages {

    stage('Test') {
      steps {
        sh 'yarn install'
        sh 'yarn test'
        slackSend(channel: "#task-manager", attachments: [
          [
            text: 'I find your lack of faith disturbing!',
            fallback: 'Hey, Vader seems to be mad at you.',
            color: '#ff0000'
          ]
        ])
      }
    }
  
  }
}
