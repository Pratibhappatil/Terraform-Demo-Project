#s3 bucket

resource "aws_s3_bucket" "new_bucket_demo_000000001" {
  bucket = "${var.my_env}-my-demo-bucket-new-0001"
  tags = {
    Name = "${var.my_env}-bucket1"
    environment = var.my_env
  }
}
