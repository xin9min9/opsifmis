av13n0(){
ps_lpp_vacpp=''
ps_lpp_vacpp=`lslpp -l |grep '^ *vacpp.cmp.rte'`
[ -z "$ps_lpp_vacpp" ] && { echo 'N'; } || { echo 'Y'; }
}
av13n0
