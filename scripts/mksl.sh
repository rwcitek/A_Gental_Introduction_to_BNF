# source this file
# mksl - number filepart

mksl() {
    local num=$1 name=$2;
cat <<EOD > "${num}_${name}.md"

---


EOD

}
_mksl () 
{ 
    local num=$1 name=$2;
    local fname="${num}_${name}.md"
  echo -e "\n---\n" > $fname
echo "# ${name}" >> $fname
}
