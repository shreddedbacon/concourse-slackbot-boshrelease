#!/bin/bash
if [ $1 ]
then
  VERSION=$1
  bosh create-release --force --version=${VERSION} --tarball=concourse-slackbot-boshrelease-v${VERSION}.tgz
else
  bosh create-release --force --tarball=concourse-slackbot-boshrelease.tgz
fi
