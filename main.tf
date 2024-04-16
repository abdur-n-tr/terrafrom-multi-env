provider "aws" {
  region = "us-east-1"
}

variable "ami" {
  description = "This is AMI for the instance"
}

# map type variable does not allow to define variables explicitly in `terraform.tfvars`
variable "instance_type" {
  description = "This is the instance type, for example: t2.micro"
  type = map(string)

  default = {
    "dev" = "t2.micro"
    "stage" = "t2.medium"
    "prod" = "t2.xlarge"
  }
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami = var.ami
  instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro")
}
