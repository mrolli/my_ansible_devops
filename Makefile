setup:
	bash create_env.sh
	vagrant up

clean:
	vagrant destroy -f
	rm -rf .vagrant
	rm -rf site

