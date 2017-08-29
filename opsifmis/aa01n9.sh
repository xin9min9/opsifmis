aa01n9(){
prtconf | grep 'Processor Clock Speed:' | awk -F: '{print $2}' | tr -d ' '
}
aa01n9
