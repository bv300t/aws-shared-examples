terraform {
  required_version = ">= 0.13"
  backend "s3" {
    region  = "us-east-1"
    key     = "terraform.tfstate"
    bucket  = "<bucket-name-placeholder>"
  }
}
