# Blockchain Node Platform

Portainer with modified app templates for managing and deploying Blockchain Nodes.

## Information

This repository is a bootstrapped version of [Portainer](https://www.github.com/portainer/portainer) which was cloned and built in a Linux environment (Manjaro KDE 4.19) without any modifications the original source prior to build.

The [Dockerfile](https://github.com/portainer/portainer/blob/master/build/linux/Dockerfile) was modified to use alpine:latest as the runtime layer rather than the base.
Additionally, the [templates.json](https://www.github.com/portainer/portainer) was replaced with a customized [templates.json](https://gitlab.com/appealtoheavenllc/portainer-templates/raw/master/node-templates.json).

The end result is a Docker image which can be run as easily as the offical [portainer/portainer:latest](https://hub.docker.com/r/portainer/portainer/) image except with custom app templates without the end-user needing to specify an external template file.

## Requirements

Docker

## Getting Started

```bash
docker volume create castle-bravo-data

docker run -d -p 9000:9000 --name castle-bravo --restart always -v /var/run/docker.sock:/var/run/docker.sock -v castle-bravo-data:/data ryanhendricks/castle-bravo:latest -H unix:///var/run/docker.sock

```

## Screenshots

![https://gitlab.com/appealtoheavenllc/blockchain-node-platform/raw/master/img/screenshot1.png](https://gitlab.com/appealtoheavenllc/blockchain-node-platform/raw/master/img/screenshot1.png)

![https://gitlab.com/appealtoheavenllc/blockchain-node-platform/raw/master/img/screenshot2.png](https://gitlab.com/appealtoheavenllc/blockchain-node-platform/raw/master/img/screenshot2.png)


## Licensing

Subject the following:

*From the [Portainer LICENSE](https://github.com/portainer/portainer/blob/develop/LICENSE):*

- Portainer is licensed under the zlib license. See [LICENSE](./LICENSE) for reference.

- Portainer also contains the following code, which is licensed under the [MIT license](https://opensource.org/licenses/MIT):

- UI For Docker: Copyright (c) 2013-2016 Michael Crosby (crosbymichael.com), Kevan Ahlquist (kevanahlquist.com), Anthony Lapenna (portainer.io)

- rdash-angular: Copyright (c) [2014] [Elliot Hesp]