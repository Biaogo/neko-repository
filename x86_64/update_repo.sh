#!/bin/bash

REPO_NAME="neko"

rm *.db *.db.sig *.db.tar.gz *.db.tar.gz.sig *.files *.files.sig *.files.tar.gz *.files.tar.gz.sig *.pkg.tar.zst.sig

repo-add --verify --sign -R $REPO_NAME.db.tar.gz *.pkg.tar.zst

./sign_packages.sh

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
