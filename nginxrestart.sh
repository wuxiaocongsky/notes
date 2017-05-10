#! /bin/bash
a=`ps -ef|grep nginx| sed -n '1p;1q'|awk '{printf $2}'`
#echo $a
sudo kill -s SIGHUP $a
