FROM gitpod/workspace-full-vnc:latest

USER root
RUN apt-get update && apt-get install -y xdo \
  && echo "/bin/bash -i -l" > /bin/bbash \
  && chmod o+trx /bin/bbash
USER gitpod
