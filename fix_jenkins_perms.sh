UIDNUMBER=`id -u`
[ $UIDNUMBER != "0" ] && echo "Please run this script as root or with sudo..." && exit 1
chown -R 1000:1000 jenkins_agent01 jenkins_agent02 jenkins_config_backup jenkins_home nexus-data nginx_config nginx_html
