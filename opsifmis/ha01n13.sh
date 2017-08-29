ha01n13(){
/opt/ignite/binia/print_manifest 2>/dev/null|grep "Main Memory:"|awk -F":" '{print $2}'|tr -d ' '
}
ha01n13
