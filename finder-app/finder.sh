#!/bin/sh
# Assignment1 - part1: finder.sh text string search tool
# usage: finder.sh $1       $2 
#                  filesdir searchstr
 
if [ $# -ne 2 ]
then
   echo wrong number of arguments. must be 2 
   exit 1
fi

if ! [ -d $1 ]; then
   echo first parameter must be a directory 
fi

echo -n "The number of files are " 
cd $1 
find . -type f | wc -l | tr -d '\n'  
echo -n " and the number of matching lines are " 
grep -r -I -o $2 $1 | wc -l
