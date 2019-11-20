FROM amazonlinux:2

ADD https://s3.amazonaws.com/session-manager-downloads/plugin/latest/linux_64bit/session-manager-plugin.rpm /tmp/session-manager-plugin.rpm
RUN yum install -y aws-cli /tmp/session-manager-plugin.rpm

ENTRYPOINT ["aws", "ssm", "start-session"]