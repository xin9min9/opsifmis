ah10n0(){
ps_hacmp=`lslpp -l|grep -i 'cluster.es.server.rte'`
[ -z "$ps_hacmp" ] && { echo 'N'; } || { echo 'Y'; }
}
ah10n0
