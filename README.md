# Nginx Docker Image

## Author

**Name:** Srinivas Tharun
**Course:** DevOps
**Trainer:** Tharun
**Project:** Custom Nginx Docker Image using AlmaLinux 9

---

## About Project

This project is created for learning Docker and Dockerfile concepts. In this project I created a custom Nginx image using AlmaLinux 9 as base image. The default Nginx web page is removed and replaced with a custom `index.html` page.

---

## Dockerfile Used

```dockerfile
FROM almalinux:9

RUN yum install nginx -y

RUN rm -rf /usr/share/nginx/html/index.html

COPY index.html /usr/share/nginx/html/index.html

LABEL course="devops"

ENV course="devops" \
    trainer="siva" \
    duration="120Hrs"

CMD ["nginx","-g","daemon off;"]
```

---

## What this Dockerfile does

* Pull AlmaLinux 9 image from Docker Hub
* Install Nginx package
* Remove default Nginx index page
* Copy custom index page into web root location
* Add image metadata using LABEL instruction
* Create environment variables using ENV instruction
* Start Nginx service when container starts

---

## Build Docker Image

```bash
docker build -t nginx-custom:v1 .
```

---

## Run Container

```bash
docker run -d -p 80:80 nginx-custom:v1
```

---

## Verify Container

Check running containers:

```bash
docker ps
```

Open browser and access:

```text
http://localhost
```

or

```text
http://<server-ip>
```

You should see the custom web page.

---

## Learning Outcomes

From this project I learned:

* Dockerfile instructions
* Image creation process
* Container execution
* Nginx deployment inside Docker
* LABEL and ENV instructions
* Difference between image and container

---

## Future Improvements

* Add custom Nginx configuration
* Use multi-stage builds
* Push image to Docker Hub
* Deploy container using Kubernetes

---

## Contact

**Author:** Srinivas Tharun
**Technology:** Docker, Nginx, AlmaLinux
**Created For:** DevOps Learning and Practice


