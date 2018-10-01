#!/usr/bin/env bash
/home/vagrant/elasticsearch-6.3.1/bin/elasticsearch -d -p pid &>/dev/null
sleep 30
netstat -apnt
