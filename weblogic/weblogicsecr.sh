#!/bin/bash
read -p "please your new password:" PASSWORD
echo $PASSWORD
PATH1="/u02/weblogic/user_projects/domains/base_domain/security"
PATH2="/u02/weblogic/user_projects/domains/base_domain/servers/AdminServer"
cd $PATH1
mv DefaultAuthenticatorInit.ldift DefaultAuthenticatorInit.ldift.bak
java -cp /u02/weblogic/wlserver_12.1/server/lib/weblogic.jar weblogic.security.utils.AdminAccount weblogic $PASSWORD .
cd $PATH2
mv data/ data.old/
echo -e "username=weblogic\npassword=$PASSWORD\n" > $PATH2/security/boot.properties
cat $PATH2/security/boot.properties
