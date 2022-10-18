up:
	docker-compose up --build

build:
	docker build --platform=linux/amd64 -t hersonpc/pyenv:latest -f Dockerfile.build .

build-no-cache:
	docker build --platform=linux/amd64 --no-cache -t hersonpc/pyenv:latest -f Dockerfile.build .

push:
	docker push hersonpc/pyenv:latest

bash:
	docker run -it --rm --name pyenvlab -p 9099:8888 -p 8501:8501 -v ${PWD}:/app hersonpc/pyenv:latest bash

bash-running-container:
	docker exec -it pyenvlab bash

run:
	docker run -d --rm --name pyenvlab --platform=linux/amd64 --add-host=host.docker.internal:host-gateway -p 9099:8888 -v ${PWD}:/app hersonpc/pyenv:latest
	
# docker run -d --rm --name pyenvlab --platform=linux/amd64 --add-host=host.docker.internal:host-gateway -p 9099:8888 -v ${PWD}:/app hersonpc/pyenv:latest

log:
	docker container logs -f pyenvlab