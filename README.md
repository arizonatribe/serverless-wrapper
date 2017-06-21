# Serverless Tutorial Wrapper

A docker container to wrap the [Building and deploying microservices with the Serverless Framework](https://github.com/kevinold/serverless-tutorial-fluentconf-2017) from O'Reiley Fluent 2017.

## Dependencies

Docker and Docker-Compose are required to run this application, which are packaged together for Mac and Windows users into [Docker Toolbox](https://www.docker.com/products/docker-toolbox). _Note_: Docker is now available natively for Mac, so you can [install Docker natively](https://docs.docker.com/docker-for-mac/). For Linux users, follow the instructions for installing the [Docker Engine](https://docs.docker.com/engine/installation/) and [Docker Compose](https://docs.docker.com/compose/install/).

## Installation

First, set the AWS access key id and secret inside of a `.env` file at the project's root folder and then:

```bash
docker-compose up --build
```

## Environment Variables

* _AWS_ACCESS_KEY_ID_ - (required) A string value corresponding to the AWS access key used for deploying/creating serverless functions
* _AWS_SECRET_ACCESS_KEY_ - (required) The secret key actually used to authenticate to the AWS instance
* _SERVERLESS_COMMAND_ - (optional, but defaults to _deploy_all_) The Serverless script command used when the container launches. Options can match the file name of any of the scripts in the `docker/usr/bin/` directory for this repo (such as `deploy`, `remove`, `create`, `create_all`, etc).
