terraform {
  backend "s3" {

    bucket         = "mansoura-bucket"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    #dynamodb_table = "value" ---> For LockID
  }
}