UIDNUMBER=`id -u`
[ $UIDNUMBER != "0" ] && echo "Please run this script as root or with sudo..." && exit 1
mkdir -p ../jenkins_agent01 ../jenkins_agent02 ../jenkins_config_backup ../jenkins_home ../nexus-data nginx_config nginx_html
chmod 775 ../jenkins_agent01 ../jenkins_agent02 ../jenkins_config_backup ../jenkins_home ../nexus-data nginx_config nginx_html
# Please change 1000 to whatever uidNumber 'sudo useradd jenkins && usermod -aG docker jenkins' could provide
# chown -R 1000:docker ../jenkins_agent01 ../jenkins_agent02 ../jenkins_config_backup ../jenkins_home
chown -R 1001:docker ../jenkins_agent01 ../jenkins_agent02 ../jenkins_config_backup ../jenkins_home 

chown -R jenkins:docker /home/jenkins /home/jenkins/.ssh
chmod 750 /home/jenkins
chmod 700 /home/jenkins/.ssh
chmod 640 /home/jenkins/.ssh/authorized_keys
chmod 640 /home/jenkins/.ssh/id_rsa.pub
chmod 600 /home/jenkins/.ssh/id_rsa
