mksl () 
{ 
    local num=$1 name=$2;
    local fname="${num}_${name}.md"
  echo "---" > $fname
echo "# ${name}" >> $fname
}
