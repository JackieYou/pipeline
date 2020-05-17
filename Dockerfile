FROM harbor.youjiqing.club/rancher/nginx:latest
WORKDIR /usr/share/nginx/html/
CMD mkdir img
ADD rancher-logo.svg img/
ADD favicon.png img/
ADD index.html .
ENTRYPOINT /bin/sh -c 'sed -i "s/demoapp/$HOSTNAME/" index.html && nginx -g "daemon off;"'
