av13n1(){
VACPP_VER=''
VACPP_VER=`lslpp -l |grep '^ *vacpp.cmp.rte'| awk '{print $2}'`
[ -z "$VACPP_VER" ] && { echo 'none'; } || { echo $VACPP_VER; }
}
av13n1
