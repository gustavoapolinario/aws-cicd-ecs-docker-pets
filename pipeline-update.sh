stackName="AWS-CICD"
pipelineArtifactsBucketName="pipeline-artifacts-69554"
buildCacheBucketName="build-cache-69554"
githubOAuthToken="???"
githubProjectUrl=https://github.com/gustavoapolinario/aws-cicd-ecs-docker-pets.git

aws cloudformation update-stack --stack-name AWS-CICD \
    --region us-east-1 \
    --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM \
    --template-body file://./Pipeline.yml \
    --parameters ParameterKey=PipelineArtifactsBucketName,ParameterValue=$pipelineArtifactsBucketName \
                ParameterKey=BuildCacheBucketName,ParameterValue=$buildCacheBucketName \
                ParameterKey=EnvironmentName,ParameterValue=dev \
                ParameterKey=GithubOAuthToken,ParameterValue=$githubOAuthToken \
                ParameterKey=GithubProjectUrl,ParameterValue=$githubProjectUrl
                
