terraform {

  required_providers {

    aws = {

      source = "hashicorp/aws"

      version = "~> 4.18.0"

    }

  }



  backend "s3" {

    bucket = "advanced-end-to-end-devsecops-project"

    key = "state/terraform.tfstate"

    region = "us-east-2"

    encrypt = true

    dynamodb_table = "terraform_table"

  }

}
