#!/bin/bash
useradd rhel
usermod -aG wheel rhel

buildah rm -a
setsebool -P container_manage_cgroup true
