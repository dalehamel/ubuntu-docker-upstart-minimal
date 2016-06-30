#!/bin/bash
# only do something if we're actually in a container
namespaces=$(cat /proc/1/cgroup | cut -d : -f 3 | uniq)
if [ "${namespaces[0]}" != "/" ] || [ ${#namspaces[@]} -gt 1 ];then
  /sbin/initctl emit stopped JOB=udevtrigger --no-wait
  /sbin/initctl emit started JOB=udev --no-wait
  /sbin/initctl emit runlevel RUNLEVEL=3 --no-wait
fi
