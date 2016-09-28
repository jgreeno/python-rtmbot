#!/usr/bin/env sh

RTMBOT=/python-rtmbot

if [ ${SLACK_TOKEN-undef} != 'undef' ]; then
    cat << EOF > /rtmbot.conf
DEBUG: True

SLACK_TOKEN: "$SLACK_TOKEN"
EOF
    $RTMBOT/rtmbot.py
else
    echo "env SLACK_TOKEN is not set. Exit."
    exit 64
fi
