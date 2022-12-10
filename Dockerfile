FROM fedora:37

RUN dnf install -y \
    rpmdevtools \
    rpmlint \
    tree \
    && dnf clean all

RUN adduser -u 1000 -m -d /home/builder builder

USER builder

RUN rpmdev-setuptree 
WORKDIR /home/builder
