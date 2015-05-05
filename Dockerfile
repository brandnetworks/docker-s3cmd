FROM ubuntu:14.04
RUN apt-get update -y && apt-get install -y python-pip && pip install s3cmd
ADD s3cfg /opt/s3cmd/.s3cfg
ADD entrypoint.sh /s3cmd-entrypoint
ENV S3CMD_CONFIG=/opt/s3cmd/.s3cfg
ENTRYPOINT ["/s3cmd-entrypoint"]
