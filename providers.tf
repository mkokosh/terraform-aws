terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region                   = var.aws_region
  shared_config_files      = ["/Users/marek/.aws/config"]
  shared_credentials_files = ["/Users/marek/.aws/credentials"]
  profile                  = "general"
}
