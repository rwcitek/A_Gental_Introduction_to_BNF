
---

# bash_dfa

## A example of a simple RegExp engine in Bash

```bash
STR=$1
state=S0 # Set the start state
N=$(len $STR)
for OFF in $(seq 1 $N)
do
  state=$(delta $state $(next))
done
final $state || exit 1
```


next, len are helper shell functions

## The delta and final shell functions

'delta' and 'final'  are user supplied functions.

Here are ones that obey the regular expression: /fooba(r|z)/

```bash
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
```

