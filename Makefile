DOCKER_IMAGE=jenkins-server
HUB=10.0.1.8:5000
VERSION=latest

build:
	docker build -t $(HUB)/$(DOCKER_IMAGE):$(VERSION) .

run:
	docker run --rm -ti -p 8080:8080 -p 50000:50000 $(HUB)/$(DOCKER_IMAGE):latest

start:
	docker run -d -p 8080:8080 -p 50000:50000 --name jenkins $(HUB)/$(DOCKER_IMAGE):latest

stop:
	docker stop jenkins
	docker rm jenkins

shell:
	docker run -i -t $(HUB)/$(DOCKER_IMAGE):latest /bin/bash

push:
	docker push $(HUB)/$(DOCKER_IMAGE):$(VERSION)
	docker push $(HUB)/$(DOCKER_IMAGE):latest
