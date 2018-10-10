#!/bin/sh
INPUT="$1"
url=$(curl -s $INPUT | grep "href=")
var=$(echo $url | cut -d">" -f2 | cut -d"=" -f2 | cut -d'"' -f2)
echo $var
