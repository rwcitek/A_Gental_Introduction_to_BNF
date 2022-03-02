# stack.sh - stack functions
declare -a stack
# s.ndx is offset of top of stack
s.ndx() {
  local n=${#stack[@]}
  let n--
  echo $n
}
s.len() {
  echo ${#stack[@]}
}
empty() {
  [ $(s.len) -eq 0 ]
}
# push $U
push() {
  val=$1
stack+=( "$val" )
}
pop() {
  unset stack[$(s.ndx)]
}
peek() {
  echo ${stack[$(s.ndx)]}
}


# print out entire stack
s.list() {
  local n=${#stack[@]}
  for i in $(seq 0 $n)
  do
    echo ${stack[$i]}
  done
}

