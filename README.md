# AWS CICD ECS Docker Pets

AWS CICD ECS Docker Pets is a sample to run all infraestructure of some docker on AWS Cloud.
This project is run the docker on ECS and do all CI/CD process to update the container.


# About Docker Pets

Docker Pets is a simple application that's useful for testing out features of Docker Enterprise Edition.

To you want, go to [Original Project Docker pets](https://github.com/docker-archive/docker-pets).


# Before start

Fork the project to your github. It is necessary to you change some code and test your changes.
CodePipeline need a Github OAuthToken, to generate it go to [https://github.com/settings/tokens]](https://github.com/settings/tokens) click on generate new token, select "public_repo" option and click on Generate Token.
Copy the token generated and save it.

# Running the build in your account

## Console Mode

Log in AWS console and go to [CloudFormation](https://console.aws.amazon.com/cloudformation/home?region=us-east-1).
Verify the region that you want to run the sample. You can choose which one you can.

## Cli Mode

If you want to run with cli, don't forget to confirm your aws credentials is configured and working.
You can configure with aws configure. If you want instructions, follow the [quickstart](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html).

You can run the CloudFormation from cli. I did prepare a shell script to update the cloudformation, but you can chance the comand to run the creation too.
Modify the pipeline-update.sh changing the command from `aws cloudformation update-stack` to `aws cloudformation create-stack`

## Parameters

When you run create the stack CloudFormation on Console or before you run the Shell command, you need especify some parameters to CFN works fine.
If your are on console, the parameters necessaries will show to you on second screen of CloudFormation Creation.
If your are on cli, see the variables on Shell script.
You can see the parameters on .yaml files (CloudFormation script file)

S3 name is unique, because that you need change the parameters: PipelineArtifactsBucketName and BuildCacheBucketName to what you want (you can change the number on final of string to work)

githubProjectUrl is the url of your forked project and githubOAuthToken is the OAuthToken generated for you.



