provider "aws" {                                                     
  region = "us-east-1"                                               
}                                                                    
                                                                     
                                                                     
resource "aws_instance" "web" {                                      
  ami           = "ami-0a0ddd875a1ea2c7f"                            
  instance_type = "t2.micro"                                         
  key_name   = aws_key_pair.demo_key_1.key_name                      
  tags = {                                                           
    Name = "HelloWorld"                                              
  }                                                                  
}                                                                    