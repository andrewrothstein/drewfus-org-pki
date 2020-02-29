clean:
	rm -rf pki-dir/
	rm -rf .ansible-roles

pki:
	@echo installing ansible pki-requirements.yml
	ansible-galaxy install -f -r pki-requirements.yml
	@echo building the pki...
	ansible-playbook pki-playbook.yml
	@echo done!
