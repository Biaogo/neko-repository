#!/bin/bash

REPO_NAME="neko"

rm -f *.db *.db.sig *.db.tar.gz *.db.tar.gz.sig *.files *.files.sig *.files.tar.gz *.files.tar.gz.sig *.pkg.tar.zst.sig

repo-add --verify --sign -R $REPO_NAME.db.tar.gz *.pkg.tar.zst

rm $REPO_NAME.db $REPO_NAME.db.sig $REPO_NAME.files $REPO_NAME.files.sig

cp $REPO_NAME.db.tar.gz $REPO_NAME.db
cp $REPO_NAME.db.tar.gz.sig $REPO_NAME.db.sig
cp $REPO_NAME.files.tar.gz $REPO_NAME.files
cp $REPO_NAME.files.tar.gz.sig $REPO_NAME.files.sig

./sign_packages.sh

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
