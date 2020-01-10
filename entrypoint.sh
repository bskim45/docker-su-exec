#!/bin/sh

USER_ID=${LOCAL_USER_ID:-9001}
USER_NAME=${LOCAL_USER_NAME:-user}

echo "Starting with UID : $USER_ID"
adduser -u $USER_ID -D $USER_NAME
export HOME=/home/$USER_NAME

exec su-exec user "$@"
