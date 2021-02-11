#!/bin/bash

chmod 0777 /root/.aria2/ -R
mkdir /.config/
mkdir /.config/rclone
touch /.config/rclone/rclone.conf
echo "$Rclone" >>/.config/rclone/rclone.conf

aria2c --conf-path=/config/aria2/aria2.conf --rpc-listen-port=$PORT --rpc-secret=$Secret