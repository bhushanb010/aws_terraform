variable "aws_region"{
	default=""
}
variable "access_key" {}
variable "secret_key" {}
variable "key"{}

variable "ec2_count_1"{
	default = 1
}

variable "ec2_image_1"{}

variable "instance_type_1"{}

variable "subnet_id_1" {
default=172.20.10.0/24
}

variable "ec2_count_2"{
	default = 1
}

variable "ec2_image_2"{}

variable "instance_type_2"{}

variable "subnet_id_2" {
default=172.20.20.0/24
}
variable "tag_autostart" {}

variable "tag_autoshutdown" {}

variable "vpc_id" {
default= id of vpc
}
