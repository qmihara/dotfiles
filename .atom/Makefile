.PHONY: install_packages

packages.txt:
	apm list --installed --bare > packages.txt

install_packages:
	apm install --packages-file packages.txt
