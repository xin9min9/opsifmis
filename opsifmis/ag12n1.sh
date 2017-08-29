ag12n1(){
GPFS_VER=''
GPFS_VER=`lslpp -l|grep gpfs| grep 'base' |tail -1|tr -s ' ' | cut -d ' ' -f3`
[ -z "$GPFS_VER" ] && { echo 'none'; } || { echo $GPFS_VER; }
}
ag12n1
