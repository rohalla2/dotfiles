#!/bin/bash

DIR=`dirname $0`
. $DIR/util.sh

if argument git; then
  $DIR/revert.sh git
  echo '# start rohalla2' >> ~/.gitconfig
  cat $DIR/.gitconfig >> ~/.gitconfig
  echo '# end rohalla2' >> ~/.gitconfig

  cp $DIR/.git-completion.bash ~
  cp $DIR/.git-branch-prompt.sh ~
fi

if argument bash; then
  cp $DIR/.profile-rohalla2 ~
  if ! grep -q profile-rohalla2 ~/.bashrc; then
    echo 'if [ -f ~/.profile-rohalla2 ]; then . ~/.profile-rohalla2; fi' >> ~/.bashrc
  fi
  . ~/.bashrc
fi