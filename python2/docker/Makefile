help:
	@cat Makefile

DOCKER_FILE=Dockerfile
SRC?=$(shell pwd)

IMAGE=yantonov/jupiter-python2

build:
	docker build \
		-t $(IMAGE) \
		-f $(DOCKER_FILE) .

notebook:
	docker run -i -t \
			-p 8888:8888 \
			-v "$(SRC):/opt/notebooks" \
			--rm \
			"$(IMAGE)" \
			/bin/bash -c \
			"/opt/conda/bin/jupyter notebook \
			--notebook-dir=/opt/notebooks \
			--ip='*' \
			--port=8888 \
			--no-browser"

ssh:
	docker run --rm -t -i "$(IMAGE)" bash

uninstall:
	docker image rm "$(IMAGE)"

stop:
	docker stop "$(shell docker ps -a --filter "ancestor=$(IMAGE)" --format '{{.ID}}' | head -n 1 || echo "")"

pull:
	docker pull "$(IMAGE)"
