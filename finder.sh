#!/bin/sh
# Assignment1 - part1: finder.sh text string search tool

if [ $# -ne 2 ]
then
   echo wrong number of arguments. must be 2 
   exit 1
fi

filesdir = $1
searchstr = $2

if | [ -d filesdir ]; then
   echo first parameter must be a directory 
fi

grep -r searchstr filesdir


