stackName="AWS-CICD-ECS"
dockerVersion="dev-latest"

aws s3 cp ./infrastructure/ s3://aws-cicd-ecs-docker-pets/infrastructure/ --recursive

aws cloudformation update-stack --stack-name $stackName \
    --region us-east-1 \
    --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM \
    --template-body file://./full-environment.yml \
    --parameters ParameterKey=DockerVersion,ParameterValue=$dockerVersion
                
