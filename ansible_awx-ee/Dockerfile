ARG CONTAINER_VERSION=latest
FROM quay.io/ansible/awx-ee:${CONTAINER_VERSION}
USER root
# https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/security_hardening/using-the-system-wide-cryptographic-policies_security-hardening
RUN \
  update-crypto-policies --set LEGACY:SHA1 && \
  yum install -y binutils && \
  yum clean all && \
  rm -Rf /var/cache/yum && \
  pip3 install --no-cache-dir --upgrade pip && \
  pip3 install --no-cache-dir \
    hvac==1.0.2 \
    jinja2>3.0.0 \
    jmespath \
    netaddr \
    pexpect \
    slack_sdk && \
  rm -Rf /home/runner/.cache
USER 1000
