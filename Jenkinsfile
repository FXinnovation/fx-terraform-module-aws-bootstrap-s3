node {
  result="SUCCESS"
  try {
    ansiColor('xterm') {
      stage('checkout') {
        scmInfo = fx_checkout()
      }

      stage('init') {
        terraform.init(
          subCommand: 'examples/standard-s3'
        )
      }

      stage('validate'){
        terraform.validate(
          subCommand: 'examples/standard-s3'
        )
      }

      withCredentials([
        usernamePassword(
          credentialsId: 'itoa-application-awscollectors-awscred',
          usernameVariable: 'TF_aws_access_key',
          passwordVariable: 'TF_aws_secret_key'
        )
      ]) {
        stage('test') {

          terraform.plan(
            out: 'plan.out',
            vars: [
              "aws_access_key=${TF_aws_access_key}",
              "aws_secret_key=${TF_aws_secret_key}"
            ],
            subCommand: 'examples/standard-s3'
          )

          try {
            fx_notify(
              status: 'PENDING'
            )

            input 'Do you want to apply this plan ?'
            terraform.apply(
              parallelism: 1,
              refresh: false,
              commandTarget: 'plan.out',
              subCommand: 'examples/standard-s3'
            )
          }catch (errorApply) {
            archiveArtifacts(
              allowEmptyArchive: true,
              artifacts: 'terraform.tfstat*'
            )
            throw (errorApply)
          } finally {
            terraform.destroy(
              vars: [
                "aws_access_key=${TF_aws_access_key}",
                "aws_secret_key=${TF_aws_secret_key}"
              ],
              subCommand: 'examples/standard-s3'
            )
          }
        }
      }
    }
  }catch (error){
    result='FAILURE'
    throw (error)
  }finally {
    stage('notify'){
      fx_notify(
        status: result
      )
    }
  }
}
