FROM ruby:3-alpine
ARG CONTAINER_VERSION
RUN \
  apk --no-cache -q add squashfs-tools rpm && \
  gem install fpm -v ${CONTAINER_VERSION}
