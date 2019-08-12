## Before we start test that we have the mandatory executables available
##EXECUTABLES = git terraform
##K := $(foreach exec,$(EXECUTABLES),\
##$(if $(shell which $(exec)),some string,$(error "No $(exec) in PATH, consider apt-get install $(exec)")))
init:
        @echo "initialize remote statefile"
        cd terraform_jenkins/layers/$(LAYER) && rm -rf .terraform/modules/ && terraform init -reconfigure -no-color

validate: init
        @echo "running terraform validate"
        cd terraform_jenkins/layers/$(LAYER) && \
        terraform validate -var "aws_accesskey=$aws_accesskey" -var "aws_secretkey=$aws_secretkey"

plan: validate
        @echo "plan the terraform file"
        cd terraform_jenkins/layers/$(LAYER) && \
        terraform plan -var "aws_accesskey=$aws_accesskey" -var "aws_secretkey=$aws_secretkey"

apply: plan
        @echo "applying terraform files"
        cd terraform_jenkins/layers/$(LAYER) && \
        terraform apply -var "aws_accesskey=$aws_accesskey" -var "aws_secretkey=$aws_secretkey" -auto-approve

plan-destroy: destroy
        @echo "running terraform destroy"
        cd terraform_jenkins/layers/$(LAYER) && \
        terraform plan -var "aws_accesskey=$aws_accesskey" -var "aws_secretkey=$aws_secretkey" -destroy

destroy: init
        @echo "running terraform destroy"
        cd terraform_jenkins/layers/$(LAYER) && \
        terraform destroy -var "aws_accesskey=$aws_accesskey" -var "aws_secretkey=$aws_secretkey" -auto-approve

