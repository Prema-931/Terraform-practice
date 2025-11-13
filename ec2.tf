 resource "aws_instance" "siri" {
    ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.singapore.id] 

  tags = { 

    Name = "Terraform"
  }
}
  resource "aws_security_group" "singapore" { #this is terraform name, for terraform reference only
    name        = var.sg_name # this is for AWS
    description = var.sg_description
    #vpc_id      = aws_vpc.main.id

    ingress {
        description      = "Allow All ports"
        from_port        = var.ingress # 0 means all ports
        to_port          = 0 
        protocol         = "tcp"
        cidr_blocks      = var.cidr_blocks
    }

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = var.cidr_blocks
        #ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
        Name = "roboshop-all-aws"
    }
}