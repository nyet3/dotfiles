FROM alpine:latest

RUN apk update && apk add openssh vim go git fish sudo g++

RUN mkdir /etc/skel/ /go/ /go/bin/ /go/src/ /go/pkg/
COPY install.sh /root/.
RUN /root/install.sh /etc/skel/
COPY vimrc /etc/skel/.vimrc
COPY config.fish /etc/skel/.config/fish/config.fish

RUN ssh-keygen -A
RUN echo PermitRootLogin no >> /etc/ssh/sshd_config
RUN echo %wheel ALL=\(ALL\) ALL >> /etc/sudoers
RUN adduser sshuser -G wheel -s /usr/bin/fish -D
RUN echo "sshuser:sshpass" | chpasswd

ENTRYPOINT [ "/usr/sbin/sshd" ,"-D" ]

ENV GOPATH /go
ENV PATH $PATH:$GOPATH/bin

EXPOSE 22
