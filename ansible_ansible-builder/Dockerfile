FROM quay.io/ansible/ansible-builder:latest
# https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/security_hardening/using-the-system-wide-cryptographic-policies_security-hardening
RUN \
  update-crypto-policies --set LEGACY && \
  pip3 install --no-cache-dir --upgrade pip && \
  rm -Rf /home/runner/.cache
