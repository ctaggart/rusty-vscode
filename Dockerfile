# https://github.com/ctaggart/rusty-vscode
# https://hub.docker.com/r/ctaggart/rusty-vscode/

# https://hub.docker.com/r/jimmycuadra/rust/
# https://github.com/jimmycuadra/docker-rust/blob/master/Dockerfile
FROM jimmycuadra/rust:latest

COPY root /root

RUN cd /root \
  && apt-get update \
  && ./install-user.sh \
  && ./install-xpra.sh \
  && ./install-vscode.sh \
  && cp install-vscode-*.sh /home/vscode/ \
  && cp start-xpra.sh /home/vscode/ \
  && chown vscode:vscode /home/vscode/*.sh \
  && su - vscode -c /home/vscode/install-vscode-RustyCode.sh \
  && su - vscode -c /home/vscode/install-vscode-debug.sh

WORKDIR /root
CMD su - vscode