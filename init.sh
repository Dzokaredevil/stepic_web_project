#!/usr/bin/env bash

sudo pip install --upgrade django==1.10.5
sudo pip install --upgrade gunicorn==19.6.0
# sudo mv /home/box/web/etc/nginx.conf  /etc/nginx/nginx.conf
sudo rm /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart

sudo ln -s /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test
sudo ln -s /home/box/web/etc/gunicorn_ask.conf /etc/gunicorn.d/ask
sudo /etc/init.d/gunicorn restart
