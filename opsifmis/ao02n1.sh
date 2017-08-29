ao02n1(){
ORA_VER=''
os_type=`uname -s`
ps -ef | grep ora_ckpt |grep -v grep >/dev/null 2>&1
if [ $? -eq 0 ];then
    >/tmp/Get_Oracle_version.sql
    echo "select version from Product_component_version where product like '%Enterprise%';" >>/tmp/Get_Oracle_version.sql
    echo "select comments from dba_registry_history;" >>/tmp/Get_Oracle_version.sql
    chmod 755 /tmp/Get_Oracle_version.sql
    chmod 777 /tmp/oracle_version.out
    
    if [ "$os_type" = "HP-UX" ];then
        ORA_SID=`ps -ex|grep ora_ckpt|grep -v grep|head -1|tr -s ' '|cut -d ' ' -f5`
    else
        ORA_SID=`export LANG=C;ps -efo args|grep -v grep|grep ora_ckpt|head -1`
    fi
    ORA_USER=`ps -ef | grep ora_ckpt | grep -v grep | grep $ORA_SID | awk '{print $1}'`
    ORA_SID=`echo $ORA_SID | awk -F '_' '{print $NF}'`
    su  - $ORA_USER  -c  "export LANG=C;export ORACLE_SID=$ORA_SID;sqlplus  /nolog << EOF
connect / as sysdba;
set heading off;
set feedback off;
set wrap off;
spool /tmp/oracle_version.out;
@/tmp/Get_Oracle_version.sql;
spool off;
exit;
EOF" >/dev/null 2>&1
    ORA_VER=`cat /tmp/oracle_version.out|grep -e ^[19]|tr -d ' '`
    PSU_VER=`cat /tmp/oracle_version.out|grep ^PSU|tail -1|cut -d ' ' -f2|cut -d '.' -f5`
    if [ "$PSU_VER" !=  "" ];then
      ORA_VER="$ORA_VER +PSU${PSU_VER}"
    fi
    ORA_VER="${ORA_VER}"
fi
[ -z "$ORA_VER" ] && { echo 'none'; } || { echo $ORA_VER; }
}
ao02n1
