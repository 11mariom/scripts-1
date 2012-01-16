#!/bin/bash
for i in $(ls -d /var/www/clients/*/*/web/); do
ln -s $(echo $i) $(echo $i|sed 's:clients\/client.\/:test\/:'|sed 's:\/web\/::');
done
