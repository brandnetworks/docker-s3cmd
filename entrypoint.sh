#!/usr/bin/env bash

set -e

bucket=$1
file=$2

/usr/local/bin/s3cmd --quiet get s3://$bucket/$file /tmp/out
cat /tmp/out
