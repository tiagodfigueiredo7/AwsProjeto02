terraform {
  backend "s3" {
    bucket = "tiago-terraform-tfstate"
    key    = "prod2"
    region = "us-east-2"
  }
}

