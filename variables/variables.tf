variable "ami-id" {
  type    = string
  default =  "ami-09c813fb71547fc4f"
  description = "AMI ID Creation"
}

variable "instance" {
default =  "ami-09c813fb71547fc4f"
}

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














