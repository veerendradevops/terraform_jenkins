resource "aws_instance" "terraformmachine" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  security_groups = ["${aws_security_group.ALLPORTS_DEV.name}"]
  availability_zone ="${var.availability_zones}"
  tags = {
      Name = "${var.environment_tag}"
  }
}
