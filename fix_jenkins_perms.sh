UIDNUMBER=`id -u`
[ $UIDNUMBER != "0" ] && echo "Please run this script as root or with sudo..." && exit 1
mkdir -p jenkins_agent01 jenkins_agent02 jenkins_config_backup jenkins_home nexus-data nginx_config nginx_html
chmod 775 jenkins_agent01 jenkins_agent02 jenkins_config_backup jenkins_home nexus-data nginx_config nginx_html
# Please change 1000 to whatever 'sudo useradd jenkins && usermod -G docker jenkins' could provide uidNumber
chown -R 1000:docker jenkins_agent01 jenkins_agent02 jenkins_config_backup jenkins_home nexus-data nginx_config nginx_html
