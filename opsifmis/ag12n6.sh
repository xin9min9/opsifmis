ag12n6(){
ps_lpp_gpfs=`lslpp -l|grep gpfs| grep 'base'`
[ ! -z $ps_lpp_gpfs ] && { mmlsconfig; } || { echo 'N'; }
}
ag12n6
