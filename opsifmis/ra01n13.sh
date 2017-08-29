ra01n13(){
MEM=`free -m |grep Mem|awk '{print $2}'`
MEMG=`echo "($MEM+500)/1000" |bc`
[ $? -ne 0 ] && {
MEM=$(expr $MEM + 500)
MEMG=$(expr $MEM / 1000)
}
echo " ${MEMG}G" | tr -d ' '
}
ra01n13
