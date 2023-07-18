FROM quay.io/ansible/awx:latest
USER root
# https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/security_hardening/using-the-system-wide-cryptographic-policies_security-hardening
RUN \
  if [ $(md5sum /var/lib/awx/venv/awx/lib/python3.9/site-packages/awx/playbooks/project_update.yml | awk '{print $1}') == "dfe9075eaa3a9465e3a5fa413dabf5ff" ]; then curl 'https://raw.githubusercontent.com/eric-zadara/awx/devel/awx/playbooks/project_update.yml' -o /var/lib/awx/venv/awx/lib/python3.9/site-packages/awx/playbooks/project_update.yml ; fi
USER 1000
