#!/bin/bash


echo "$1"" fájlban"
echo `cat $1 | grep -c $2`
echo  "$2""-karakter minta van"



