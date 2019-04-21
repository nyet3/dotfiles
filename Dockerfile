FROM golang:alpine

RUN apk update && apk add --no-cache openssh sudo git fish python3 vim

RUN mkdir /etc/skel

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

EXPOSE 22
