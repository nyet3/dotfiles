FROM alpine:latest

RUN apk update && apk add openssh vim go git fish sudo

RUN mkdir /etc/skel/
COPY install.sh /root/.
RUN /root/install.sh /etc/skel/
COPY vimrc /etc/skel/.vimrc

RUN ssh-keygen -A
RUN echo PermitRootLogin no >> /etc/ssh/sshd_config
RUN adduser sshuser -G wheel -s /usr/bin/fish -D
RUN echo "sshuser:sshpass" | chpasswd

ENTRYPOINT [ "/usr/sbin/sshd" ,"-D" ]

ENV GOPATH $HOME/go
ENV PATH $PATH:$GOPATH/bin

EXPOSE 22
