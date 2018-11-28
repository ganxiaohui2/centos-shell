#更改weblogic的密码，需要重启weblogic，killall java

#启动weblogic,并且查看7001的端口是否正常启动

su - oracle -c /home/oracle/ws.sh

netstat -tnlp|grep 7001
