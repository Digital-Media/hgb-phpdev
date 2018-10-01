#!/usr/bin/env bash
kill `cat /home/vagrant/elasticsearch-6.3.1/pid`
sleep 30
netstat -apnt
