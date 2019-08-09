@echo "running terraform apply"
echo "changing directory"
cd D:\veeru_terraform\veeru_terraform_zone\terraform_jenkins\layers\DEV
terraform apply -var "aws_accesskey=$aws_accesskey" -var "aws_secretkey=$aws_secretkey" -auto-approve