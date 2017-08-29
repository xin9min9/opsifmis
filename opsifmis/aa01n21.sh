aa01n21(){
        #prtconf | grep 'Machine Serial Number:' | awk -F: '{print $3}' | tr -d ' '
        uname -Mul | awk -F, '{print $NF}'|cut -c '3-9'
}
aa01n21
