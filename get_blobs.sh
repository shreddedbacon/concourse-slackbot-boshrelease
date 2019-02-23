#!/bin/bash
echo "Download blobs"
if [ $1 ]
then
  VERSION=$1
else
  VERSION=0.0.3
fi
if [ ! -d .downloads ]; then
  mkdir -p .downloads
fi
curl -L https://github.com/shreddedbacon/concourse-slackbot/releases/download/v$VERSION/concoursebot-linux-$VERSION.tar.gz > .downloads/concoursebot-linux-$VERSION.tgz
echo > config/blobs.yml
bosh add-blob .downloads/concoursebot-linux-$VERSION.tgz concourse-slackbot/concoursebot-linux-$VERSION.tgz
