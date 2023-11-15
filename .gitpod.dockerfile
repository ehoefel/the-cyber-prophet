FROM gitpod/workspace-full

RUN sudo apt-get update \
 && sudo apt-get install -y hugo

RUN echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIApuiCM+qU/KhIR4qSl/5HHcGy1cxjLixKt1++im5CHQ dev.ehoefel@gmail.com" > /home/gitpod/.ssh/id_ed25519.pub

RUN cat <<EOT
-----BEGIN OPENSSH PRIVATE KEY-----
b3BlbnNzaC1rZXktdjEAAAAABG5vbmUAAAAEbm9uZQAAAAAAAAABAAAAMwAAAAtzc2gtZW
QyNTUxOQAAACAKbogjPqlPyoSEeKkpf+Rx3BstXMYy4sSrdfvopuQh0AAAAJjwS87R8EvO
0QAAAAtzc2gtZWQyNTUxOQAAACAKbogjPqlPyoSEeKkpf+Rx3BstXMYy4sSrdfvopuQh0A
AAAECVx1/DavD3S2juaY3sWYW/GoOJl+8kKi+Etuo0KDc4CwpuiCM+qU/KhIR4qSl/5HHc
Gy1cxjLixKt1++im5CHQAAAAFWRldi5laG9lZmVsQGdtYWlsLmNvbQ==
-----END OPENSSH PRIVATE KEY-----
EOT > /home/gitpod/.ssh/id_ed25519

RUN eval "$(ssh-agent -s)"

RUN ssh-add /home/gitpod/.ssh/id_ed25519

