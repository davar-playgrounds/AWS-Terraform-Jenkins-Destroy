provider "aws" {
  region = "${var.region}"
}
terraform {
  backend "s3" {
    bucket = "kams-devops"
    key = "terraform.tfstate"
    region = "us-west-2"
    dynamodb_table = "terraform-lock"
    encrypt = true
  }
}