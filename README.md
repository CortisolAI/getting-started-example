# getting-started-example
Getting started example for Cortisol

## How to run it

### Option 1

It requires the one of the following Python versions: 3.8, 3.9, 3.10 or 3.11.

Also, you need to install some requirements:

- Create a virtualenv. For example: `mkvirtualenv getting-started-cortisol`
- Install the requirements `pip install -r requirements.txt`

And, finally, you can it locally:

`python -m app.main`


### Option 2

Run it in a Docker container

- `make build` to build the Docker image
- `make run` to run the container. The service will be available at `http://localhost:8080/`. It will output the container id, too.
- `make stop` to stop the container
- `make clean` to delete the image and the container
