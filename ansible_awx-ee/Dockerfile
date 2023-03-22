FROM quay.io/ansible/awx-ee:latest
RUN \
  pip3 install --no-cache-dir --upgrade pip && \
  pip3 install --no-cache-dir \
    ansible-pylibssh \
    jinja2>3.0.0 \
    jmespath \
    netaddr \
    hvac==1.0.2
