#!/bin/bash
#
# login-notify.sh: Sends an email alert when a login event is detected.
#
# The first argument ($1) is the log line captured by swatch.

LOG_LINE="$1"
HOSTNAME=$(hostname)
CURRENT_TIME=$(date)

# Customize your email address here:
RECIPIENT="v.cornici@gmail"

SUBJECT="Login Alert on ${HOSTNAME}"
BODY="A login event was detected on ${HOSTNAME} at ${CURRENT_TIME}.

Log Details:
${LOG_LINE}"

# Send the email.
echo "${BODY}" | mail -s "${SUBJECT}" "${RECIPIENT}"
