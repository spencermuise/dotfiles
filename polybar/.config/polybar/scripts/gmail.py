#!/usr/bin/python

import os

netrc = '.google'
server = 'imap.gmail.com'

inboxIcon = " "

inbox = os.popen('curl -sf --netrc-file "{}" -X "STATUS INBOX (UNSEEN)" imaps://"{}"| tr -d -c "[:digit:]"'.format(netrc, server)).read()

if int(inbox) > 0:
    inboxCount = inboxIcon + inbox
else:
    inboxCount = ''

print(inboxCount)
