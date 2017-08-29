ra01n60(){
which vmstat >/dev/null 2>&1
[ $? -eq 0 ] && { vmstat 2 10; } || { echo 'Command not found: vmstat'; }
}
ra01n60
