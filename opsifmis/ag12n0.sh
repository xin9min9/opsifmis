ag12n0(){
ps_lpp_gpfs=''
ps_lpp_gpfs=`lslpp -l|grep gpfs| grep 'base'`
[ -z "$ps_lpp_gpfs" ] && { echo 'N'; } || { echo 'Y'; }
}
ag12n0
