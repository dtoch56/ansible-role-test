.PHONY: help venv update list test

.venv:
	@if [ "$${VIRTUAL_ENV}" = "" ]; then\
		printf "\033[31m RUN INSIDE VENV ONLY: \033[0m";\
		printf "\n source .venv/bin/activate \n";\
		exit 1;\
	fi

help:
	@awk 'function build_alias(cmds) { split(cmds, array, " "); res=array[1]; for (i=2; i<=length(array); i++) { res= res " (alias: " array[i] ")"; } return res; } BEGIN {FS = ":.*##"; printf "Usage: make [TARGET]\nTargets:\n"} /^[a-zA-Z_\- ]+:.*?##/ { printf "  \033[36m%-20s\033[0m %s\n", build_alias($$1),  $$2; } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

venv v: ## Create Python virtual environment
	sudo apt-get install python3-venv
	python3 -m venv .venv

update u: .venv ## Update python modules and dependencies
	python3 -m ensurepip --upgrade
	pip3 install pipenv
	pipenv update

lint l: .venv ## Run linters
	yamllint .
	ansible-lint
	molecule syntax

test t: .venv ## Run molecule tests
	molecule test
