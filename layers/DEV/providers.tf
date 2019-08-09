provider "aws" {
  region = "${var.region}"
  aws_accesskey = "${var.aws_accesskey}"
  aws_secretkey = "${var.aws_secretkey}"
}
