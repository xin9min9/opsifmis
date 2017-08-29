as09n1(){
SNA_VER=''
SNA_VER=`lslpp -l|grep -i 'sna.rte'|grep -i 'Communications Server Base'|sort|uniq|tr -s ' '|cut -d ' ' -f3`
[ -z "$SNA_VER" ] && { echo 'none'; } || { echo $SNA_VER; }
}
as09n1
