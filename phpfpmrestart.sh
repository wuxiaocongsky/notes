#! /bin/bash
#平滑重启phpfpm
ps -ef | grep php-fpm | grep master | awk '{print $2}' | xargs kill -12
