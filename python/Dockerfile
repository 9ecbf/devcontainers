ARG PYTHON_VERSION
FROM python:${PYTHON_VERSION}-slim

WORKDIR /tmp
COPY scripts/*.sh .
RUN chmod +x *.sh
RUN ./update-apt.sh

ARG USER
RUN ./create-user.sh ${USER}
RUN chown ${USER}:sudo .

ARG WORKSPACE
ARG PROFILE
RUN mv load-*.sh /home/${USER}/ && \
    usermod -aG sudo ${USER} && \
    echo "%sudo ALL=(ALL:ALL) ALL" | EDITOR="tee -a" visudo && \
    echo ". ~/load-env.sh ${WORKSPACE} ${PROFILE}" >> /home/${USER}/.bashrc && \
    echo ". ~/load-completions.sh" >> /home/${USER}/.bashrc

USER ${USER}
RUN ./install-bun.sh
