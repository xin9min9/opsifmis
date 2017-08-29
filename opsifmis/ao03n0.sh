ao03n0(){
[ -f "/etc/oraInst.loc" ] && { echo 'Y'; o03n0_flag='Y'; } || { o03n0_flag='N'; }
if [ "$o03n0_flag" = 'N' ];then
ORA_CLI_VER=''
    if [ "$ORA_SID" != "" ];then
        if grep ^${ORA_SID} /etc/oratab;then
            ORACLE_HOME=`grep ^${ORA_SID} /etc/oratab|cut -d ':' -f2`
            export ORACLE_HOME=$ORACLE_HOME
            ORA_CLI_VER=`$ORACLE_HOME/bin/sqlplus -V | grep Release |tr -s ' '|cut -d ' ' -f3`          
        fi
    fi
[ -z "$ORA_CLI_VER" ] && { echo 'N'; } || { echo 'Y'; }
fi
}
ao03n0
