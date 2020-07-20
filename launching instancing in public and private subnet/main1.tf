provider "aws"{                                             
        region="us-east-1"                                  
}                                                           
module "my_vpc"{                                            
        source="./modules/vpc"                              
}                                                           
                                                            
module "my_ec2_public"{                                     
        source="./modules/ec2"                              
        vpc_id="${module.my_vpc.vpc_id}"                    
        subnet_id="${module.my_vpc.subnet_id-p1}"           
}   

module "my_ec2_private"{                                     
        source="./modules/ec2"                              
        vpc_id="${module.my_vpc.vpc_id}"                    
        subnet_id="${module.my_vpc.subnet_id-P1}"           
}                                                          