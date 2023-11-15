terraform {
  required_version = "~> 1.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.1"
    }
  }

  backend "s3" {
    bucket         	   = "terraform-state-test-ksmogorzewski"
    key              	 = "state/terraform.tfstate"
    region         	   = "eu-central-1"
    encrypt        	   = true
    dynamodb_table     = "terraform-state-lock"
  }

}

provider "aws" {
  region = "eu-central-1"
  access_key = secrets.AWS_ACCESS_KEY_ID
  secret_key = secrets.AWS_SECRET_ACCESS_KEY
}
