# https://github.com/ctaggart/rusty-vscode
# https://hub.docker.com/r/ctaggart/rusty-vscode/

FROM debian:jessie

COPY root /root

RUN cd /root \
  && ./install-user.sh \
  && ./install-openssl.sh \
  && ./install-x2go.sh \
  && ./install-vscode.sh \
  && cp install-vscode-*.sh /home/vscode/ \
  && cp install-rust.sh /home/vscode/ \
  && cp start-xpra.sh /home/vscode/ \
  && cp start-ssh.sh /home/vscode/ \
  && chown vscode:vscode /home/vscode/*.sh \
  && su - vscode -c /home/vscode/install-rust.sh \
  && su - vscode -c /home/vscode/install-vscode-RustyCode.sh \
  && su - vscode -c /home/vscode/install-vscode-debug.sh

WORKDIR /root
CMD su - vscode -c /home/vscode/start-ssh.sh
