docker run `
  --user root `
  --name jenkins-blueocean `
  --rm `
  --detach `
  --env DOCKER_TLS_CERTDIR=/certs `
  --publish 8080:8080 `
  --publish 50000:50000 `
  --volume jenkins-data:/var/jenkins_home `
  --volume /var/run/docker.sock:/var/run/docker.sock `
  myjenkins-blueocean:1.1 

#  --env DOCKER_HOST=unix:///var/run/docker.sock `

  # docker exec -it jenkins-blueocean /bin/bash
  # docker exec -it jenkins-blueocean cat /var/jenkins_home/secrets/initialAdminPassword