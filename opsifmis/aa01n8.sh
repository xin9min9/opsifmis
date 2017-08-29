aa01n8(){
# also: prtconf | grep 'Number Of Processors:' | awk -F: '{print $2}' | tr -d ' '
lsdev -Cc processor | wc -l | tr -d ' '
}
aa01n8
