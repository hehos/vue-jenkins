docker stop jenkins_node || true \
 && docker rm jenkins_node || true \
 && cd /Users/hehui/learnspace/jenkins_home/workspace/vue-jenkins  \
 && docker build  -t jenkins_node  . \
 && docker run -d -p 8083:80 --name jenkins_node -v /Users/hehui/learnspace/jenkins_home/workspace/vue-jenkins/dist:/usr/share/nginx/html -v /Users/hehui/learnspace/jenkins_home/workspace/vue-jenkins/nginx.conf:/etc/nginx/nginx.conf jenkins_node