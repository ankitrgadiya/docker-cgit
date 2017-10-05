GITLAB = $(CI_REGISTRY)/$(CI_PROJECT_PATH)/cgit
DOCKER = $(HUB_USER)/cgit

all:
	docker build -t $(GITLAB):debian-nginx ./
	docker tag $(GITLAB):debian-nginx $(DOCKER):debian-nginx
	docker tag $(GITLAB):debian-nginx $(GITLAB):latest
	docker tag $(GITLAB):debian-nginx $(DOCKER):latest
	docker push $(GITLAB):debian-nginx
	docker push $(GITLAB):latest
	docker push $(DOCKER):debian-nginx
	docker push $(DOCKER):latest
