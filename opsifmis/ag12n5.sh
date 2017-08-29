ag12n5(){
ps_lpp_gpfs=`lslpp -l|grep gpfs| grep 'base'`
[ ! -z $ps_lpp_gpfs ] && { mmdf; } || { echo 'N'; }
}
ag12n5
