fin () 
{ 
    echo "$1" | cut -d _ -f 2-
}
beg () 
{ 
    echo "$1" | cut -d _ -f 1
}  
declare -a files
export files


mklist() {
  for i in 0*.md
  do
    files+=("$i")
  done
}

loop1() {
  for i in "${files[@]}"
  do
    echo $i
  done
}

# format filename
nfmt() {
  printf "%03d\n" $(echo "$1" | bc)
}

# main - run git mv s
main1() {
  mklist
  for i in {0..48}
  do
    f="${files[$i]}"
    nd=$(fin $f)
    st=$(nfmt "($i + 1) * 10")
    git mv $f "${st}${nd}"
  done
}
