# Ansible Plugin Issue

This example repository demonstrates an issue with `ansible-core==2.15.5rc1`, which broke proper loading of filter plugins within roles if they happen to have the same name. This worked perfectly fine in earlier versions. For convenience, a Dockerfile has been added as well to quickly replicate this within an isolated environment.

To replicate the issue with `v2.15.5rc1`, run: `docker build --build-arg ANSIBLE_CORE_VERSION=2.15.5rc1 -t tmp . && docker run -it --rm tmp`

To verify the previously working version `v2.15.4`, run: `docker build --build-arg ANSIBLE_CORE_VERSION=2.15.4 -t tmp . && docker run -it --rm tmp`

A workaround is to ensure that each filter plugin has an individual name, e.g. instead of going for `custom.py` twice, rename them as `custom1.py` and `custom2.py`.
