FROM almalinux:9
RUN yum install nginx -y
RUN rm -rf /usr/share/nginx/html/index.html
COPY index.html /usr/share/nginx/html/index.html
LABEL course="devops"
ENV course="devops" \
    trainer="siva" \
    duration="120Hrs"
CMD ["nginx","-g","daemon off;"]
