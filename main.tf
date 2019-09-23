provider "aws" {
  region = "${var.aws_region}"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  token = "${var.key}"
}

data "aws_vpc" "vpc_selected" {
  id = "${var.vpc_id}"
}

resource "aws_subnet" "aws_subnet_id" {
  vpc_id            = "${data.aws_vpc.selected.id}"
  availability_zone = ""
}

resource "aws_instance" "ec2_instance_1" {
  count = "${var.ec2_count_1}"
  ami   = "${var.ec2_image_1}"
  instance_type = "${var.instance_type_1}"
  subnet_id = "${var.subnet_id_1}"
  user_data = << EOF
  {"chef_RunList": "role[chef_role]"}
  availability_zone = "${var.availability_zone}"
  vpc_security_group_ids = ["${var.security_group}"]

  tags = {
    AutoStart = "${var.tag_autostart}"
	AutoShutdown = ${var.tag_autoshutdown}"
	
	}
}
resource "aws_instance" "ec2_instance_2" {
  count = "${var.ec2_count_2}"
  ami   = "${var.ec2_image_2}"
  instance_type = "${var.instance_type_2}"
  subnet_id = "${var.subnet_id_2}"
  user_data = << EOF
  {"chef_RunList": "role[chef_role]"}
  availability_zone = "${var.availability_zone}"
  vpc_security_group_ids = ["${var.security_group}"]

  tags = {
    AutoStart = "${var.tag_autostart}"
	AutoShutdown = ${var.tag_autoshutdown}"
	
	}
}