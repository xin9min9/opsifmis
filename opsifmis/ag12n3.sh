ag12n3(){
ps_lpp_gpfs=`lslpp -l|grep gpfs| grep 'base'`
[ ! -z $ps_lpp_gpfs ] && { mmlsnsd; } || { echo 'N'; }
}
ag12n3
