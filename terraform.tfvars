aws_region             = "eu-west-2"
vpc_cidr               = "10.0.0.0/16"
public_subnet1_cidr    = "10.0.1.0/24"
public_subnet2_cidr    = "10.0.2.0/24"
private_subnet1_cidr   = "10.0.3.0/24"
private_subnet2_cidr   = "10.0.4.0/24"
az1                    = "eu-west-2a"
az2                    = "eu-west-2b"

Backend_ami_id        = "ami-06cff85354b67982b"
Frontend_ami_id       = "ami-06cff85354b67982b"

# EC2 Instance Configuration
instance_type         = "t3.medium"
key_name              = "docker"
