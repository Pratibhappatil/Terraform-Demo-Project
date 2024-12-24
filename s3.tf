#resource block

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-bucket-demo-123"
  tags = {
    Name = "pp-bucket1"
  }
}
