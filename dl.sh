#!/bin/bash

Y=$(date '+%Y')
D=$(date '+%d')
mkdir -p $D && cd $D
curl --cookie ../cookies.txt https://adventofcode.com/$Y/day/$(date '+%-d')/input -o "in"
