terraform {
  backend "s3" {
    bucket = "terraform-tfstate-s3"
    region = "ap-northeast-1"
    key = "incoming-webhook-lambda-sample"
  }
}

provider "aws" {
  region = "ap-northeast-1"
  profile = "default"
}

module "webhook-lambda" {
  source = "../modules/"

  project_name = "incoming-webhook-lambda-sample"
  source_file = "src/index.py"
  output_path = "dist/lambda.zip"
  runtime = "python3.6"
  handler = "index.lambda_handler"
  # addditional_policy_for_lambda_iam = ["arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"]
}
