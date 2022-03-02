#!/bin/bash
# get next char
next() {
  echo $STR | cut "-c${OFF}"
}
# get length of string
len() {
  echo $STR | wc -c
}
# delta fn
delta() {
  st=$1; ch=$2
  declare -A lut=( ["S0,f"]=S1 ["S1,o"]=S2 ["S2,o"]=S3 ["S3,b"]=S4 ["S4,a"]=S5 ["S5,r"]=S6 )
  echo ${lut["${st},${ch}"]}
}


# store string
STR="foobar"
state=S0 # Set the start state

N=$(len)
echo N is $N
for OFF in {1..6}
do
  echo state: $state : char $(next)
  state=$(delta $state $(next))
  OFF=$(echo "$OFF + 1" | bc)
done
echo Final state $state
