

module "ec2" {
  source = "../../modules/ec2"
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  availability_zones= "${var.availability_zones}"

   
}



