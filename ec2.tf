provider "aws" {
        region = "us-east-2"
 }

   resource "aws_instance" "manee2k6"{
        ami = "ami-916f59f4"
        instance_type = "t2.micro"
        key_name = "pattabhi"
        security_groups= ["jenkins-docker"]

        #Install Jenkins and docker in this instance.
        user_data = "${file("userdata.sh")}"
        tags {
         Name = "ec2_instance"
        }
 }
