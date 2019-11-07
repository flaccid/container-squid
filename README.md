# docker-squid

[![License][badge-license]][apache2]
[![GitHub Issues][badge-gh-issues]][gh-issues]
[![GitHub Stars][badge-gh-stars]][gh-stars]
[![GitHub Forks][badge-gh-forks]][gh-forks]
[![Docker Pulls][badge-docker-pulls]][docker-hub]
[![Twitter][badge-twitter]][tweet]

A squid stuck in a shipping container.

The intention of this image:

- official `squid` package on Alpine Linux
- no default configuration other than what is provided by the OS package
- no re-configuration on Docker `ENTRYPOINT`
- configuration is left to the user and technology, e.g. Kubernetes

## Usage

### Build

    $ make

### Build and Push to Docker Hub

This is usually not required as the repository is an automated build.

    $ make docker-release

### Run

    $ docker run -itd \
        -p 3128:3128 \
          flaccid/squid

License and Authors
-------------------
- Author: Chris Fordham (<chris@fordham-nagy.id.au>)

```text
Copyright 2017, Chris Fordham

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

[badge-license]: https://img.shields.io/badge/license-Apache%202-blue.svg
[badge-gh-issues]: https://img.shields.io/github/issues/flaccid/docker-squid.svg
[badge-gh-forks]: https://img.shields.io/github/forks/flaccid/docker-squid.svg
[badge-gh-stars]: https://img.shields.io/github/stars/flaccid/docker-squid.svg
[badge-docker-pulls]: https://img.shields.io/docker/pulls/flaccid/squid.svg
[badge-twitter]: https://img.shields.io/twitter/url/https/github.com/flaccid/docker-squid.svg?style=social
[gh-issues]: https://github.com/flaccid/docker-squid/issues
[gh-stars]: https://github.com/flaccid/docker-squid/stargazers
[gh-forks]: https://github.com/flaccid/docker-squid/network
[docker-hub]: https://registry.hub.docker.com/u/flaccid/squid/
[apache2]: https://www.apache.org/licenses/LICENSE-2.0
[tweet]: https://twitter.com/intent/tweet?text=check%20out%20https://goo.gl/KS5vis&url=%5Bobject%20Object%5D
