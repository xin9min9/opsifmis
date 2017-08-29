ah10n3(){
ps_hacmp=`lslpp -l|grep -i 'cluster.es.server.rte'`
[ ! -z "$ps_hacmp" -a -f /usr/es/sbin/cluster/utilities/cldump ] && {
    /usr/es/sbin/cluster/utilities/cldump
 } || { echo 'N'; }
 }
ah10n3
