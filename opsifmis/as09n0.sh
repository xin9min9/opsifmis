as09n0(){
ps_sna=''
ps_sna=`lslpp -l|grep -i 'sna.rte'`
[ -z "$ps_sna" ] && { echo 'N'; } || { echo 'Y'; }
}
as09n0
