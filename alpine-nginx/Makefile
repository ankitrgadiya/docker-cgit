GITLAB = $(CI_REGISTRY)/$(CI_PROJECT_PATH)/cgit
DOCKER = $(HUB_USER)/cgit

all:
	docker build -t $(GITLAB):alpine-nginx ./
	docker tag $(GITLAB):alpine-nginx $(DOCKER):alpine-nginx
	docker push $(GITLAB):alpine-nginx
	docker push $(DOCKER):alpine-nginx
