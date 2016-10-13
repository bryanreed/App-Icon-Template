#!/bin/bash

INK=/usr/bin/inkscape

if [[ -z "$1" ]] 
then
	echo "SVG file needed."
	exit;
fi

BASE=`basename "$1" .svg`
SVG="$1"

$INK -z -D -e "$BASE-120@2x.png" -f 	$SVG -w 120 -h 120
$INK -z -D -e "$BASE-120@3x.png" -f      $SVG -w 180 -h 180

$INK -z -D -e "$BASE-152@2x.png" -f 	$SVG -w 152 -h 152
$INK -z -D -e "$BASE-152@3x.png" -f      $SVG -w 228 -h 228

$INK -z -D -e "$BASE-168@2x.png" -f 	$SVG -w 168 -h 168
$INK -z -D -e "$BASE-168@3x.png" -f      $SVG -w 252 -h 252

$INK -z -D -e "$BASE-180@2x.png" -f 	$SVG -w 180 -h 180
$INK -z -D -e "$BASE-180@3x.png" -f      $SVG -w 270 -h 270
