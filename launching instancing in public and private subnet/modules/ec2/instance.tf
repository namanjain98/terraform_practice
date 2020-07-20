resource "aws_instance" "example" {
  ami           = "ami-0a0ddd875a1ea2c7f"
  instance_type = "t2.micro"

  # the VPC subnet
  subnet_id = "${var.subnet_id}"

  # the security group
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]
}
