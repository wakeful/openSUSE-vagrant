#!/usr/bin/env bash
set -x

rpm --import http://download.opensuse.org/repositories/systemsmanagement:/puppet/openSUSE_13.2/repodata/repomd.xml.key
zypper addrepo -n 'Systemsmanagement Puppet' http://download.opensuse.org/repositories/systemsmanagement:/puppet/openSUSE_13.2/ systemsmanagement-puppet

zypper --non-interactive --gpg-auto-import-keys in \
  puppet

exit 0