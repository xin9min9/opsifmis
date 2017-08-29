ha01n11(){
/opt/ignite/binia/print_manifest 2>/dev/null|grep "OS mode:"|awk -F":" '{print $2}'|tr -d ' '
}
ha01n11
