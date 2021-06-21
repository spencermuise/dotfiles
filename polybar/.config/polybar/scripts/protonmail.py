#!/usr/bin/python

import os
import sys

netrc = '.hydroxide-auth'
server = '127.0.0.1:1143'

inboxIcon = " "
listsIcon = " "

inbox = os.popen('curl -sf --netrc-file "{}" -X "STATUS INBOX (UNSEEN)" imap://"{}"| tr -d -c "[:digit:]"'.format(netrc, server)).read()
lists = os.popen('curl -sf --netrc-file "{}" -X \'STATUS "Mailing Lists" (UNSEEN)\' imap://"{}"| tr -d -c "[:digit:]"'.format(netrc, server)).read()

if int(inbox) > 0:
    inboxCount = inboxIcon + inbox
else:
    inboxCount = ''

if int(lists) > 0:
    listsCount = listsIcon + lists
else:
    listsCount = ''

if int(inbox) > 0 and int(lists) > 0:
    spacer = ' '
else:
    spacer = ''

print(inboxCount + spacer + listsCount)
