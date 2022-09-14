#!/bin/bash

cd /opt/git/puppet && git pull
puppet apply /opt/git/puppet/manifests/