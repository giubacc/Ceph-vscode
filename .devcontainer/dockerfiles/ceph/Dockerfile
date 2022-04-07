FROM apache/arrow-dev:amd64-ubuntu-20.04-cpp

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# Configure apt and install packages
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get -y install ssh sudo bash-completion docker-compose curl s3cmd jq \
    && apt-get autoremove -y

# Create the user
ADD puthnfo.sh /usr/bin/
ADD hnfo / 
RUN puthnfo.sh

ADD bashrc.patch /
RUN /bin/bash -c "cat /bashrc.patch >> /home/$USERNAME/.bashrc"

ADD install-deps.sh /
ADD debian /
RUN /install-deps.sh; exit 0

USER $USERNAME
