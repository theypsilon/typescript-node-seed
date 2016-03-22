.PHONY: docker-image docker-push docker-pull docker-test docker-run

REGISTRY=localhost
PROJECT=tsbackendseed
TAG=latest
IMAGE=$(REGISTRY)/$(PROJECT):$(TAG)

docker-image:
	docker build -t $(IMAGE) .

docker-push:
	docker push $(IMAGE)

docker-pull:
	docker pull $(IMAGE)

NAME=$(PROJECT)_container
PORT=3333

docker-run: docker-image
	docker run --name $(NAME)_server --rm -it -p $(PORT):3333 $(IMAGE)

docker-test: docker-image
	docker run --name $(NAME)_test --rm  $(IMAGE) npm test
