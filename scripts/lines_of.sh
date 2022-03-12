#!/bin/bash
# lines_of : given ???_*.md, count lines greater > $1
max=$1
for i in ???_*.md
do
  n=$(cat $i | wc -l); let n-=3
  [ $n -ge $max ] && echo "$n $i"
done


