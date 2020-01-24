# These are just a set of helpers for common tasks and usage demonstrations.

install_roles: ## Install external roles from Ansible Galaxy
	ansible-galaxy install --role-file roles_external.yml

converge_mailcow: install_roles ## Converge mailcow servers from local config
	ansible-playbook --inventory environments/staging.ini playbooks/all-servers.yml --limit mailcow 

%:
	@true

.PHONY: help

help:
	@echo 'Usage: make <command>'
	@echo
	@echo 'where <command> is one of the following:'
	@echo
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help
