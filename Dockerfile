FROM alpine

ARG BUILD_DATE
ARG VERSION
LABEL version="lcaparros/terraform - ${VERSION} Build-date: ${BUILD_DATE}"
LABEL maintainer="lcaparros"

RUN \
  wget https://releases.hashicorp.com/terraform/${VERSION}/terraform_${VERSION}_linux_amd64.zip && \
  unzip terraform_${VERSION}_linux_amd64.zip && rm terraform_${VERSION}_linux_amd64.zip && \
  mv terraform /usr/bin/terraform

WORKDIR /files

ENTRYPOINT ["terraform"]
