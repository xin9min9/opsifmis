ra22n2(){
log_path=`grep ^log_path /etc/ansible/ansible.cfg | awk -F= '{print $2}' | tr -d ' '`
[ -f "$log_path" ] && tail -1000 $log_path
}
ra22n2
