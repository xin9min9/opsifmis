aa01n12(){
prtconf | grep 'LPAR Info:' | awk -F: '{print $2}'
}
aa01n12
