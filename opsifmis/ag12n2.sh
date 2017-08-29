ag12n2(){
ps_lpp_gpfs=`lslpp -l|grep gpfs| grep 'base'`
[ ! -z $ps_lpp_gpfs ] && { mmlscluster; } || { echo 'N'; }
}
ag12n2
