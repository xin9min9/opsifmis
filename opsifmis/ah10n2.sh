ah10n2(){
ps_hacmp=`lslpp -l|grep -i 'cluster.es.server.rte'`
[ ! -z "$ps_hacmp" -a -f /usr/es/sbin/cluster/utilities/cltopinfo ] && {
    /usr/es/sbin/cluster/utilities/cltopinfo
 } || { echo 'N'; }
 }
ah10n2
