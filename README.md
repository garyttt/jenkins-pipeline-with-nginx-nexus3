# jenkins-pipeline-with-nginx-nexus3
The docker-compose.yaml will load a customized jenkins image v1.0.X
Refer to https://github.com/garyttt/unattended_jenkins_image_build for steps to create this customized image

# How to run
1. git clone https://github.com/garyttt/jenkins-pipeline-with-nginx-nexus3 pipeline
2. cd pipeline
3. ./run_all.sh
4. if there is jenkins permission issue, run 'sudo ./fix_jenkins_perms.sh", and then re-run './run_all.sh'
