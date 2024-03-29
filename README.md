## Purpose

This tutorial helps developers deploy Lambda functions with Docker images, overcoming the 250 MB size limit on Lambda layers. Traditional methods make it tough for functions with big dependencies. With Docker images, you can include larger packages, manage versions easily, and streamline your workflow. This approach empowers developers to build more complex serverless applications without size restrictions holding them back.

## Prerequisites

- [Docker](https://docs.docker.com/engine/install/)
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

## Deployment steps

#### 1. Update deployment information

* Edit `deployment/deploy.sh` with your own aws credentials

#### 2. Create ECR repo

* Name your ECR repo with this format `{app}-{env}` e.g. `lambda-docker-dev`

#### 3. Push Docker Image to ECR

1. Navigate the ternimal to `deployment` folder
2. Run `deploy.sh` file

```bash
bash deploy.sh dev
```

#### 4. Create Lambda function

1. Check ECR console to get image URI
2. Create lambda function and apply the respective image URI in Lambda Console

## Additionals
* If you want to automate the entire process. Please check out [this repo](https://github.com/tquean15012003/automated-lambda-function-with-docker)
* For more details, please check out [this article](https://medium.com/@tqueansg15012003/deploy-python-lambda-functions-with-container-images-8677171f2a97) 
