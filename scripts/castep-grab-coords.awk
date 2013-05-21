#!/bin/sh
awk '/Coordinates/{i++};END{print i;print}' $1
awk '/Coordinates/{print $1, $4, $5, $6}' $1
