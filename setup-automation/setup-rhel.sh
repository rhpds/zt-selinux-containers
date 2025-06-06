#!/bin/bash
usermod -aG wheel rhel

buildah rm -a
setsebool -P container_manage_cgroup true

systemctl stop httpd
systemctl disable httpd
