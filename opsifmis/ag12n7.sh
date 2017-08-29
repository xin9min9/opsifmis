ag12n7(){
ps_lpp_gpfs=`lslpp -l|grep gpfs| grep 'base'`
[ ! -z $ps_lpp_gpfs ] && { cat /var/adm/ras/mmfs.log.latest; } || { echo 'N'; }
}
ag12n7
