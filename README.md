# jenkins-pipeline-with-nginx-nexus3

Disclaimer: the containers created are meant for non-production / lab or testing purposes.

The docker-compose.yaml will load a customized jenkins image v1.0.X
Refer to https://github.com/garyttt/unattended_jenkins_image_build for steps to create this customized image
This customized image has: first admin user 'admin' setup with pre-configured password in the dockerfile from the above url, and some baseline setup on baseURL, enable agent to master access control, set number of executors, and enable proxy compatibility.

The docker-compose.yaml will also create two Jenkins Agents (JNLP4 and SSH), Nexus3 Repository Manager and Nginx Reverse Proxy (http mode only)

# How to run
0. ensure your current user is uidNumber 1000 and gidNumber 1000 (jenkins user)
1. git clone https://github.com/garyttt/jenkins-pipeline-with-nginx-nexus3 pipeline
2. cd pipeline
3. ./run_all.sh
4. if there is jenkins permission issue, run 'sudo ./fix_jenkins_perms.sh", and then re-run './run_all.sh'

# How to accees Jenkins via baseURL or via Reverse Proxy (Nginx)
5. http://127.0.0.1:8080/jenkins # baseURL
6. http://127.0.0.1/jenkins # Nginx reverse proxy

# How to setup Inbound Agent (aka JNLP4 aka Java WebStart Agent) or SSH Agent
7. https://github.com/garyttt/jenkins-pipeline-with-nginx-nexus3/blob/master/jenkins_create_nodes(agents).pdf

# How to setup periodic backup so that your config changes are backed up
8. When jenkins master first is first time started, you will notice 'WARNING o.j.p.p.PeriodicBackup#execute: Cron is not defined.', you could follow https://github.com/garyttt/unattended_jenkins_image_build/blob/master/Jenkins_Periodic_Backup_Config_Example.pdf to get it setup.


