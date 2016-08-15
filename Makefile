default: no-upgrades

all:
	ansible-playbook -i hosts playbook.yml

no-upgrades:
	ansible-playbook -i hosts playbook.yml --skip-tags upgrades

upgrades-only:
	ansible-playbook -i hosts playbook.yml --tags upgrades

.PHONY: all default no-upgrades upgrades-only
