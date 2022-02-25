#!/bin/bash


get_hwinfo() {
    echo -ne  'Total memory:'
    free -h | grep Mem: | tr -s ' ' | cut -d' ' -f2
    echo -ne 'model name:'
    grep -m1 "model name" /proc/cpuinfo | awk -F: '{print $2}'
    echo -ne 'Bogomips:'
    grep -m1 bogomips /proc/cpuinfo | awk '{print $3}'
}






