pipeline {
  agent any
    
  tools {nodejs "Node 14.15.4"}
    
  stages {

    stage('Test') {
      steps {
        sh 'yarn test'
        def attachments = [
          [
            text: 'I find your lack of faith disturbing!',
            fallback: 'Hey, Vader seems to be mad at you.',
            color: '#ff0000'
          ]
        ]
        slackSend(channel: "#general", attachments: attachments)
      }
    }
  
  }
}