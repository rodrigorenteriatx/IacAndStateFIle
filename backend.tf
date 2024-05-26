# create s3 for backend
resource "aws_s3_bucket" "backendbucket" {
  bucket = "s3stateackendrrcloudresume"
  tags = {
    Name = "s3BucketCloudResume"

  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "encryption" {
    bucket = aws_s3_bucket.backendbucket.id

    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.backendbucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
# creat dyanmodb (state locking)

resource "aws_dynamodb_table" "statelock" {
  name = "state-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}