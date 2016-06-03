Minimal possible changes around an ubuntu system (provided by cloud images, see [source](https://github.com/tianon/docker-brew-ubuntu-core/blob/52c8214ecac89d45592d16ce7c14ef82ac7b0822/update.sh)).

Adds a fake init wrapper, to trick upstart into proceeding. Doesn't modify anything else - tries to behave as much like a real ubuntu system as possible.

Based on official docker images:

* https://github.com/tianon/docker-brew-ubuntu-core/blob/52c8214ecac89d45592d16ce7c14ef82ac7b0822/trusty/Dockerfile
* https://github.com/tianon/dockerfiles/blob/4d24a12b54b75b3e0904d8a285900d88d3326361/sbin-init/ubuntu/upstart/14.04/Dockerfile
