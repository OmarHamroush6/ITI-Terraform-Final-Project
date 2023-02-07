resource "aws_s3_bucket" "omar-remote-state" {
  bucket = "omar-remote-state"
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_bucket_versioning" "enabled" {
  bucket = aws_s3_bucket.omar-remote-state.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_dynamodb_table" "omar-locks" {
  name         = "omar-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

terraform {
  backend "s3" {
    bucket = "omar-remote-state"
    key = "Dev/terraform.tfstate"
    region = "us-east-1"

    dynamodb_table = "omar-locks"
    encrypt = true
  }
}