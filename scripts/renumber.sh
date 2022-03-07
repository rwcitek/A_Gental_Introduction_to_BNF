# source this file: source renumber.sh
# Usage: main1 [offset]
# Eg. offset defaults to 10
# main1  # will renumber by 10 E.g. 010_bnf.md ... 500_conclusion.md
# main1 1 # will renumber by 1 E.g. 001_bnf.md .. 050_clonclusion.md
fin () 
{ 
    echo "$1" | cut -d _ -f 2-
}
beg () 
{ 
    echo "$1" | cut -d _ -f 1
}
# initf : set up $files array
initf() {
unset files
declare -a files
export files
}


mklist() {
  initf
  for i in *.md
  do
#  echo adding $i to files
    files+=( ${i} )
  done
#  echo Now files is : ${#files[@]}
}
sizef() {
  echo ${#files[@]}
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
  offset="$1"
  [ -z ${offset} ] && offset=10
  mklist
  numfiles=$(sizef); let numfiles--
  for i in $(seq 0 $numfiles)
  do
    f="${files[$i]}"
    nd=$(fin $f)
    st=$(nfmt "($i + 1) * $offset")
    dest="${st}_${nd}"
    if [ $f == $dest ]
    then
      echo Did not move: $f == $dest
    else
      git mv $f $dest
    fi
  done
}
