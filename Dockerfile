FROM alpine:latest

ENV AQUA_INSTALLER_VERSION=v2.2.0
ENV AQUA_VERSION=v2.21.0

ADD https://raw.githubusercontent.com/aquaproj/aqua-installer/$AQUA_INSTALLER_VERSION/aqua-installer .
ENV AQUA_ROOT_DIR=/root/.local/share/aquaproj-aqua
ENV PATH=$AQUA_ROOT_DIR/bin:$PATH

RUN apk --update --no-cache add bash
RUN chmod u+x /aqua-installer && \
    /aqua-installer -v $AQUA_VERSION

RUN rm aqua-installer

SHELL ["/bin/bash", "-cex"]
