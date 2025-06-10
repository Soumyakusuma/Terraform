

resource "aws_instance" "roboshop" {
  ami           = var.ami-id
  instance_type = var.type_of_env == "dev" ? "t3.micro" : "t3.small"
  vpc_security_group_ids = [ aws_security_group.allow_all.id ]
  
  tags = var.ec2-tags
}

resource "aws_security_group" "allow_all" {
  name        = var.sg_allow
  description = var.describe

   ingress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = "-1"
    cidr_blocks      = var.cidr
    ipv6_cidr_blocks = ["::/0"]
  }

   egress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = "-1"
    cidr_blocks      = var.cidr
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = var.sg-tags
}
