## Before we start test that we have the mandatory executables available
##EXECUTABLES = git terraform
##K := $(foreach exec,$(EXECUTABLES),\
##$(if $(shell which $(exec)),some string,$(error "No $(exec) in PATH, consider apt-get install $(exec)")))
.PHONY: plan

init: 
      @echo "initialize remote state file"
	  cd /layers/$(LAYER) && \
	  rm -rf .terraform/modules/ && \
	  terraform init -reconfigure -no-color

