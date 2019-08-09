variable "region" {
  description = "Region"
}
variable "availability_zones" {
  description = "Availabiltyzones that are going to be used for the subnets"
}
variable "aws_accesskey" {
  type = "string"
}
variable "aws_secretkey" {
  type = "string"
}

#EC2 PARAMETERS
variable "ami" {    
  description = "image id to launch"
}
variable "key_name" {
  description = "keyname"
}
variable "instance_type" {
  description = "instance type to launch"
}