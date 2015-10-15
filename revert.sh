#!/bin/bash

. `dirname $0`/util.sh

if argument git; then
  TARGET=~/.gitconfig
  TMP=/tmp/.gitconfig.rohalla2
  sed -e '/# start rohalla2/,/# end rohalla2/d' $TARGET > $TMP
  mv $TMP $TARGET
fi

if argument bash; then
  rm -f ~/.profile-rohalla2
fi