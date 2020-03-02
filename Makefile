clean:
	rm -rf pki-dir/
	rm -rf .ansible-roles

galaxydeps:
	@echo installing ansible pki-requirements.yml
	ansible-galaxy install -f -r pki-requirements.yml
	@echo done installing ansible pki-requirements.yml

pki:
	@echo building the pki...
	ansible-playbook pki-playbook.yml
	@echo done!

all: galaxydeps pki
