# source this file
# Usage : ls.n  2 3
# Will pull out the second and 3rd  rang of the listing
ls.n() {
  \ls -1 | bat -r ${2}:${3}
}
