resource "aws_s3_bucket" "b" {
  bucket = "naman-c1111111129df1"
  acl    = "private"

  tags = {
    Name = "naman-c1111111129df1"
  }
}