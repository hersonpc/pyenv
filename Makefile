up:
	docker-compose up --build

build:
	docker build -t hersonpc/pyenv:latest -f Dockerfile.build .

build-no-cache:
	docker build --no-cache -t hersonpc/pyenv:latest -f Dockerfile.build .

push:
	docker push hersonpc/pyenv:latest