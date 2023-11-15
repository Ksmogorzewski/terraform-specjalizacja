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
  access_key = "AKIAS66AZWLSTMQGR3YW"
  secret_key = "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"
}
