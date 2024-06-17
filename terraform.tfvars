virginia_cidr = "10.10.0.0/16"
#public_subnet = "10.10.0.0/24"
#private_subnet = "10.10.1.0/24"

subnets = [ "10.10.0.0/24", "10.10.1.0/24"]

tags = {
  "env" = "dev"
  "owner" = "Santiago"
  "cloud" = "AWS"
  "IAC" = "Terraform"
  "IAC_Version" = "1.7.0"
}

sg_ingress_cidr = "0.0.0.0/0"

ec2_specs = {
  "ami" = "ami-0e731c8a588258d0d"
  "instance_type" = "t2.micro"
}