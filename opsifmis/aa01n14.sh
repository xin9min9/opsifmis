aa01n14(){
prtconf | grep 'Good Memory Size:' | awk -F: '{print $2}' | tr -d ' '
}
aa01n14
