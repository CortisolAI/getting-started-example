IMAGE_NAME := getting-started-cortisol
CONTAINER_NAME := getting-started-cortisol-container


build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run -d -p 8080:80 --name $(CONTAINER_NAME) $(IMAGE_NAME)

stop:
	docker stop $(CONTAINER_NAME)

clean:
	docker rm $(CONTAINER_NAME)
	docker rmi $(IMAGE_NAME)

.PHONY: build run stop clean