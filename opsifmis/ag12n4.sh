ag12n4(){
ps_lpp_gpfs=`lslpp -l|grep gpfs| grep 'base'`
[ ! -z $ps_lpp_gpfs ] && { mmgetstate -a; } || { echo 'N'; }
}
ag12n4
