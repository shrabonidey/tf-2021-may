provider "aws" {
  region = var.region
  access_key = "AKIA3MCVEXMK63AKH45M"
  secret_key = "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"
}

terraform {
  backend "s3" {
    bucket = "javahome-2021-may-tf-state"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "dynamodb_table"
  }
}
