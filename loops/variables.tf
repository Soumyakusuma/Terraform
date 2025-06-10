variable "ami-id" {
  type    = string
  default =  "ami-09c813fb71547fc4f"
  description = "AMI ID Creation"
}


#variable "instance" {
  #default = "t3.micro"
#}


variable "ec2-tags" {
  type=map(string)
  default =  {
    name= "HelloWorld"
}
}

variable "sg_allow"{
    default= "allow_all_ips"

}

variable "describe"{
    default= "allow all ips "

}

variable "from_port"{
    default= 0
}
variable "to_port"{
    default= 0
}

variable "cidr"{
    type= list(string)
    default= ["0.0.0.0/0"]
}

variable "sg-tags" {
  type=map(string)
  default =  {
    name= "allow_all_ips"
}
}

variable "type_of_env"{
  default="prod"
}

variable "instances"{
  default= ["mongodb", "redis","mysql" , "rabbitmq"]
}

variable "zone_id"{
  default=Z03148573A2NAXD6GP1WZ
}

variable "domain_name"{
  default=pract.site

}















