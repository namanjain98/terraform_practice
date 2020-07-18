resource "aws_instance" "example" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"

  
  subnet_id = aws_subnet.main-public-1.id

  
  vpc_security_group_ids = [aws_security_group.example-instance.id]

  
  key_name = aws_key_pair.mykeypair.key_name

 
  iam_instance_profile = aws_iam_instance_profile.s3-mybucket-role-instanceprofile.name
}

vagrant@vagrant-ubuntu-trusty-64:~/terra/terraform-course/demo-14$ cat output.tf
output "instance" {
  value = aws_instance.example.public_ip
}