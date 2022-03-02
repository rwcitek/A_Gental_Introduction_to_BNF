#!/bin/bash
# get next char
next() {
  echo $STR | cut "-c${OFF}"
}
# get length of string
len() {
  echo -n $1 | wc -c
}
# delta fn and final fn. Must be supplied by user
delta() {
  st=$1; ch=$2
  declare -A lut=( ["S0,f"]=S1 ["S1,o"]=S2 ["S2,o"]=S3 ["S3,b"]=S4 ["S4,a"]=S5 ["S5,r"]=S6 ["S5,z"]=S7 )
  [ -z ${lut["${st},${ch}"]} ] && echo SErr || echo ${lut["${st},${ch}"]}
}
final() {
  st=$1
[ $st == S6 ] && return 0
  [ $st == S7 ] && return 0
  return 1
}


# store string
STR=$1         #"foobar"
state=S0 # Set the start state

N=$(len $STR)
echo N is $N
for OFF in $(seq 1 $N)
do
#  echo state: $state : char $(next)
  state=$(delta $state $(next))
  OFF=$(echo "$OFF + 1" | bc)
done
echo Final state $state
final $state || exit 1
