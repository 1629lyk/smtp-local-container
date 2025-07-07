#!/bin/bash

# Basic Postfix configuration for local delivery
postconf -e "myhostname = smtp.local"
postconf -e "mydestination = smtp.local, localhost"
postconf -e "home_mailbox = Maildir/"
postconf -e "inet_interfaces = all"

# Start Postfix
service postfix restart

# Keep container running
tail -f /dev/null
