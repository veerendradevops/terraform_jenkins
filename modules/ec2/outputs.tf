output "publicip" {
  value = "${aws_instance.terraformmachine.public_ip}"
}
