provider "aws" {
    Region = "{var.aws_region}"
}

#================ State File Backend ==================

terraform {
  backend "s3" {
    bucket = "terraform-state-remote-test"
    dynamodb_table = "terraform-state-lock-dynamo"
    encrypt = true
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}

#=========== dynamodb table for locking the state file =========
resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name = "terraform-state-lock-dynamo"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
 
  attribute {
    name = "LockID"
    type = "S"
  }
}
