FROM alpine:latest

RUN apk update && apk add --no-cache openssh sudo curl git python3 gcc g++ fish vim go

RUN mkdir /etc/skel /go /go/bin /go/src /go/pkg
RUN chmod 777 /go /go/bin /go/src /go/pkg

COPY install.sh /root/.
COPY vimrc /etc/skel/.vimrc
COPY config.fish /etc/skel/.config/fish/config.fish

RUN pip3 install vim-vint
RUN /root/install.sh

RUN ssh-keygen -A
RUN echo PermitRootLogin no >> /etc/ssh/sshd_config
RUN echo %wheel ALL=\(ALL\) ALL >> /etc/sudoers
RUN adduser sshuser -G wheel -s /usr/bin/fish -D
RUN echo "sshuser:sshpass" | chpasswd

ENTRYPOINT [ "/usr/sbin/sshd" ,"-D" ]

ENV GOPATH /go
ENV PATH $PATH:$GOPATH/bin

EXPOSE 22
