                                                                        
output "vpc_id"{                                                        
        value="${aws_vpc.main.id}"                                      
}                                                                       
                                                                        
output "subnet_id-p1"{                                                  
        value="${aws_subnet.main-public-1.id}"                          
}                                                                       
output "subnet_id-p2"{                                                  
        value="${aws_subnet.main-public-2.id}"                          
}                                                                       
output "subnet_id-p3"{                                                  
        value="${aws_subnet.main-public-3.id}"                          
}                                                                       
output "subnet_id-P1"{                                                  
        value="${aws_subnet.main-private-1.id}"                         
}                                                                       
output "subnet_id-P2"{                                                  
        value="${aws_subnet.main-private-2.id}"                         
}                                                                       
output "subnet_id-P3"{                                                  
        value="${aws_subnet.main-private-3.id}"                         
}                                                                       