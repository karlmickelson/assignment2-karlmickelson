#! /bin/sh
# Assignment1 - part2: writer.sh file writing tool
# usage: writer.sh $1        $2 
#                  writefile writestr

if [ $# -ne 2 ]
then
   echo wrong number of arguements, must be 2
   exit 1
fi

mkdir -p $(dirname $1)

echo $2 > $1



