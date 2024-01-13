# Get the environment
if [ -z "$1" ]; then
  env="dev"
else
  env=$(awk '{print tolower($0)}' <<< "$1")
fi

# Replace with your own values
aws_profile="AdministratorAccess-007985056474"
app="lambda-docker"
aws_account="007985056474"
aws_region="ap-southeast-1" 

# Upload the image to ECR
source ./upload_image.sh $aws_profile $aws_region $env $app $aws_account