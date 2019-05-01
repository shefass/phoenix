#!/bin/bash

echo ===============================
echo Nightly Release Desktop Wallet
echo ===============================

echo TEST SCRIPT!

if [ "$TRAVIS_BRANCH" != "nightly" ]; then
    echo "This script works only on branch 'nightly'"
    exit 0;
fi
git config --add remote.origin.fetch +refs/heads/*:refs/remotes/origin/*
git fetch --all
git checkout develop
git pull
git checkout nightly
git merge --no-ff origin/develop
git push @github.com/">https://${GH_TOKEN}@github.com/burst-apps-team/phoenix.git"



#npm i @angular/cli -g
#
## install script deps
#echo
#cd ./scripts
#npm i
#
## install/update version of burstjs
#cd ../lib
#npm install
#npm run bootstrap
#
## install/update angular wallet deps
#cd ../web/angular-wallet
#npm i
#
## install/update desktop wallet deps
#cd ../../desktop/wallet
#npm install
#
## only builds, but not publish
##npm run release:macos
#
