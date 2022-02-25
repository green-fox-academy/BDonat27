#!/bin/bash

a1=$(wc -c "$1" | cut -d' ' -f1)
a2=$(wc -c "$2" | cut -d' ' -f1)

([ "$a1" -gt "$a2" ] && echo $1) || ([ "$a1" -lt "$a2" ] && echo $2)
