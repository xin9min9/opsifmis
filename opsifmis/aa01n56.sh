aa01n56(){
which sar >/dev/null 2>&1
[ $? -eq 0 ] && { sar -d 2 10; } || { echo 'Command not found: sar'; }
}
aa01n56
