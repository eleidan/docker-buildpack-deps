#!/usr/bin/env bash

THE_USER=phantom
OLD_UID=$(id -u $THE_USER)
THE_UID=$OLD_UID

## 1. Fetch UID and GID from /home/phantom/app
APP_DIR=/home/$THE_USER/app
if [ -d $APP_DIR ]; then
  THE_UID=$(stat --format '%u' $APP_DIR)
  THE_GID=$(stat --format '%g' $APP_DIR)
fi

## 2. Update UID and GID of the user
if [[ $OLD_UID != $THE_UID && $THE_UID != "0" ]]; then
  usermod -u $THE_UID $THE_USER \
  && groupmod -g $THE_GID $THE_USER \
  && echo "Updated UID and GID for the '$THE_USER' user according to the '$APP_DIR' directory."
fi

exec gosu $THE_USER "$@"
