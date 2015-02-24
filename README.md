## Docker rsyslog 8 Dockerfile

This repository contains **Dockerfile** of the latest version of [Rsyslog 8](http://www.rsyslog.com/) for [Docker](https://www.docker.com/) [automated build](https://registry.hub.docker.com/u/cogniteev/rsyslog8/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

### Base Docker Image

* [ubuntu:14.04](https://registry.hub.docker.com/_/ubuntu/)

### Installation

1. Install [Docker](https://www.docker.com/)

2. Download [automated build](https://registry.hub.docker.com/u/cogniteev/rsyslog8/): `docker pull cogniteev/rsyslog8`

### Usage

This rsyslog image allows you to easily feed rsyslog with logs pushed by other containers.

To do so, each application container may provide the following volumes:

* `/etc/rsyslog.d/NAME/` a directory providing rsyslog its configuration for this container.
* `/var/log/NAME/ provides` a directory containing the logs of your container.

Then you may run the rsyslog container with the appropriate `--volumes-from` directives to mount those volumes.

### Example

A [sample application](https://github.com/cogniteev/docker-rsyslog8/tree/master/sample) is available on the source code repository of this `Dockerfile`.
