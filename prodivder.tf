#aqui é onde escolhemos qual provedor o Terraform irá trabalhar - AWS
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
# aqui é onde escolhemos a região e as Key do usuario para criação IAM
provider "aws" {
  region     = "us-east-2"