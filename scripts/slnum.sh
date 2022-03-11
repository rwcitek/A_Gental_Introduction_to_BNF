# source this file
# number the slides for correction purposes
slnum () 
{ 
    local n=1;
    for i in ???_*.md;
    do
        echo $n : $(beg $i);
        let n++;
    done
}
