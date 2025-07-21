#!/bin/bash
useradd rhel
usermod -aG wheel rhel

buildah rm -a
setsebool -P container_manage_cgroup true

# install the packages
dnf install -y --releasever=10 --installroot=$scratchmnt redhat-release
dnf install -y --setopt=reposdir=/etc/yum.repos.d \
      --installroot=$scratchmnt \
      --setopt=cachedir=/var/cache/dnf httpd
