#!/bin/bash

sudo mkdir /config/
sudo mkdir /config/aria2/
cp /aria2.conf /config/aria2/

sudo mkdir /config/.aria2/
touch /config/.aria2/aria2.session

aria2c --conf-path=/config/aria2/aria2.conf --rpc-listen-port=$PORT