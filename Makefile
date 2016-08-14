all:
	ansible-playbook -i hosts playbook.yml --skip-tags upgrades
