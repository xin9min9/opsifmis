ao03n1(){
ORA_CLI_VER=''
if [ -f "/etc/oraInst.loc" ];then
    set|grep ORACLE_HOME >/dev/null 2>&1
    if [ $? -eq 0 ];then
        ORA_CLI_VER=`$ORACLE_HOME/bin/sqlplus -V | grep Release |tr -s ' '|cut -d ' ' -f3`
    else
       INV_path=`grep 'inventory_loc=' /etc/oraInst.loc | cut -d '=' -f2`
         DIR_LIST=`grep 'HOME NAME=' ${INV_path}/ContentsXML/inventory.xml |grep -v grid|grep -v agent|grep -i -v CRS|grep -i home| cut -d ' ' -f3|cut -d '=' -f2`
         for i in $DIR_LIST
         do
             j=`echo $i | cut -d '"' -f2`
             if [ -f $j/bin/sqlplus ];then
                 export ORACLE_HOME=${j}
                 ORA_CLI_VER=`$ORACLE_HOME/bin/sqlplus -V | grep Release |tr -s ' '|cut -d ' ' -f3`
                 break
             fi
       done
    fi
else
  if [ "$ORA_SID" != "" ];then
    grep ^${ORA_SID} /etc/oratab >/dev/null 2>&1
    if [ $? -eq 0 ];then
        ORACLE_HOME=`grep ^${ORA_SID} /etc/oratab|cut -d ':' -f2`
        export ORACLE_HOME=$ORACLE_HOME
        ORA_CLI_VER=`$ORACLE_HOME/bin/sqlplus -V | grep Release |tr -s ' '|cut -d ' ' -f3`
    fi
  fi  
fi
[ -z "$ORA_CLI_VER" ] && { echo 'none'; } || { echo $ORA_CLI_VER; }
}
ao03n1
