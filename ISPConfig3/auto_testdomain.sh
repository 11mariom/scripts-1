#!/bin/bash
for i in $(ls -d /var/www/clients/*/*/web/); do
ln -s $(echo $i) $(echo $i|sed -e 's/clients\/client[0-9]*\//test\//' -e 's/\/web\///');
done
