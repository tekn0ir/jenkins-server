## Jenkins Server Dockerfile


This repository contains **Dockerfile** of Jenkins

### Base Docker Image

* [debian](https://hub.docker.com/_/debian/)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download: `docker pull tekn0ir/jenkins-server`

   (alternatively, you can build an image from Dockerfile: `docker build -t="tekn0ir/jenkins-server" github.com/tekn0ir/jenkins-server`)

### Usage

    docker run -d -p 0.0.0.0:8080:8080 -p 0.0.0.0:50000:50000 tekn0ir/jenkins-server
