DIRS = alpine-nginx debian-nginx debian-apache

all:
	for each in $(DIRS); do $(MAKE) -C $$each; done
