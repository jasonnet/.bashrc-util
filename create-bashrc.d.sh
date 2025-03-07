#!/bin/bash

mkdir -p ~/.bashrc.d

export SLINK="jasonnet-bashrc-util.d"
if [ -h ~/.bashrc.d/$SLINK ] ; then
  #echo "exists"
  : # already done
else 
  #echo "not exists"
  cd ~/.bashrc.d/
  ln -s ~/.bashrc-util/bashrc/   $SLINK
fi


THECMD="source ~/.bashrc-util/include-.bashrc.d-tree.source"
grep "$THECMD" ~/.bashrc
if [ "$?" != "0" ] ; then
  echo "you'll need to add the following (or equiv) to your .bashrc file:"
  echo "  # include the ~/.bashrc.d/ tree"
  echo "  $THECMD"
fi

