GITLAB = $(CI_REGISTRY)/$(CI_PROJECT_PATH)/cgit
DOCKER = $(HUB_USER)/cgit

all:
	docker build -t $(GITLAB):debian-apache ./
	docker tag $(GITLAB):debian-apache $(DOCKER):debian-apache
	docker push $(GITLAB):debian-apache
	docker push $(DOCKER):debian-apache
