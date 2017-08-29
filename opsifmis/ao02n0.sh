ao02n0(){
o02n0_ps=`ps -ef | grep ora_ckpt | grep -v grep`
[ -z "$o02n0_ps" ] && { echo 'N'; } || { echo 'Y'; }
}
ao02n0
