ah10n1(){
HACMP_VER=''
HACMP_VER=`lslpp -l|grep -i 'cluster.es.server.rte'|sort|uniq|tr -s ' '|cut -d ' ' -f3`
[ -z "$HACMP_VER" ] && { echo 'none'; } || { echo $HACMP_VER; }
}
ah10n1
