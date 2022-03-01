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
  echo $st
}


# store string
STR="foobarbaz"
state=S0 # Set the start state

N=$(len)
echo N is $N
for OFF in {1..10}
do
  echo state: $state
  #state=$(delta $state $(next))
done
echo Final state $state
