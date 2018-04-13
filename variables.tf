variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-east-2"
}

# ubuntu-trusty-14.04 (x64)
variable "aws_ami" {
  default = {
    "us-east-2" = "ami-916f59f4"
    
  }
}

variable "key_name" {
  secKey= "padmavathy"
  description = "Name of the SSH keypair to use in AWS."
}
