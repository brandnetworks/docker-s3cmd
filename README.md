s3-get
======

This is intended to be a simple Docker image for retrieving an object from an S3 bucket.
Under the hood, it uses s3cmd.

For example, to use it in a Systemd unit file to pull down some configuration file:

```
[Unit]
Description=custom-config

[Service]
Type=oneshot
ExecStart=/usr/bin/docker pull brandnetworks/s3-get ; /usr/bin/docker run --rm -it brandnetworks/s3-get bucket object > /path/to/file

[Install]
WantedBy=multi-user.target
```
