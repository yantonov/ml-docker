help:
	@cat Makefile

DOCKER_FILE=Dockerfile
SRC?=$(shell pwd)
CONTAINER_SRC=/src

JUPITER_PORT=8888
EXPOSED_JUPITER_PORT?=8888
STREAMLIT_PORT=8501
EXPOSED_STREAMLIT_PORT?=8501

IMAGE=yantonov/ml
CONTAINER_NAME?=$(shell echo "$(IMAGE)" | tr '/' '_')

EXECUTABLE=$(shell command -v docker >> /dev/null 2>&1 && echo "docker" || echo "podman")

build:
	$(EXECUTABLE) build \
		-t $(IMAGE) \
		-f $(DOCKER_FILE) .

notebook:
	$(EXECUTABLE) run \
			--hostname localhost \
			-it \
			-p $(EXPOSED_JUPITER_PORT):$(JUPITER_PORT) \
			-p $(EXPOSED_STREAMLIT_PORT):$(STREAMLIT_PORT) \
			-v "$(SRC):$(CONTAINER_SRC)" \
			--name "$(CONTAINER_NAME)" \
			--rm \
			"$(IMAGE)" \
			"jupyter notebook \
			--notebook-dir=$(CONTAINER_SRC) \
			--ip=0.0.0.0 \
			--port=$(JUPITER_PORT) \
			--no-browser \
			--allow-root"

lab:
	$(EXECUTABLE) run \
			--hostname localhost \
			-it \
			-p $(EXPOSED_JUPITER_PORT):$(JUPITER_PORT) \
			-p $(EXPOSED_STREAMLIT_PORT):$(STREAMLIT_PORT) \
			-v "$(SRC):$(CONTAINER_SRC)" \
			--name "$(CONTAINER_NAME)" \
			--rm \
			"$(IMAGE)" \
			"jupyter lab \
			--notebook-dir=$(CONTAINER_SRC) \
			--ip=0.0.0.0 \
			--port=$(JUPITER_PORT) \
			--no-browser \
			--allow-root"

logs:
	$(EXECUTABLE) logs "$(CONTAINER_NAME)"

ssh:
	$(EXECUTABLE) run --hostname localhost \
			-it \
			-p $(EXPOSED_JUPITER_PORT):$(JUPITER_PORT) \
			-p $(EXPOSED_STREAMLIT_PORT):$(STREAMLIT_PORT) \
			-v "$(SRC):$(CONTAINER_SRC)" \
			--name "$(CONTAINER_NAME)" \
			--rm \
			"$(IMAGE)" \
			/bin/bash

stop:
	$(EXECUTABLE) stop "$(CONTAINER_NAME)"

pull:
	$(EXECUTABLE) pull "$(IMAGE)"

push:
	$(EXECUTABLE) push "$(IMAGE)"

uninstall:
	$(EXECUTABLE) image rm "$(IMAGE)"
