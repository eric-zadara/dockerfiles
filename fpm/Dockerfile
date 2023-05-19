FROM ruby:3-alpine
ENV GEM_PATH=/fpm
ENV PATH="/fpm/bin:${PATH}"
WORKDIR /src
ARG CONTAINER_VERSION
RUN \
  apk --no-cache -q add squashfs-tools rpm && \
  gem install fpm -v ${CONTAINER_VERSION} --install-dir=/fpm --no-document
USER fpm
ENTRYPOINT ["/fpm/bin/fpm"]
