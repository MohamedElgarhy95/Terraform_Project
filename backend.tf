terraform {
  backend "s3" {

    bucket         = "sprints-bucket-for-terraform"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "sprints-terraform"
  }
}