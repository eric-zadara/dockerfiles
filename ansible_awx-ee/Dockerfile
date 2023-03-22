FROM quay.io/ansible/awx-ee:latest
USER root
# https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/security_hardening/using-the-system-wide-cryptographic-policies_security-hardening
RUN \
  update-crypto-policies --set LEGACY:SHA1 && \
  pip3 install --no-cache-dir --upgrade pip && \
  pip3 install --no-cache-dir \
    jinja2>3.0.0 \
    jmespath \
    netaddr \
    hvac==1.0.2 && \
  rm -Rf /home/runner/.cache
USER 1000
