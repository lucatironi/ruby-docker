# Minimal Docker and Ruby Rack app setup

## Requirements

- Docker

## Usage

Build the docker image:

    docker build -t myapp .

Run the newly created image on port 8080:

    docker run -p 8080:8080 myapp
