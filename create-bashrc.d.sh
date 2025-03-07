#!/bin/bash

mkdir -p ~/.bashrc.d

export SLINK="jasonnet-bash-util.d"
if [ -h ~/.bashrc.d/$SLINK ] ; then
  #echo "exists"
  : # already done
else 
  #echo "not exists"
  cd ~/.bashrc.d/
  ln -s ~/.jasonnet-bash-util/bashrc/   $SLINK
fi


THECMD="source ~/.jasonnet-bash-util/include-.bashrc.d-tree.source"
grep "$THECMD" ~/.bashrc
if [ "$?" != "0" ] ; then
  echo "you'll need to add the following (or equiv) to your .bashrc file:"
  echo "  # include the ~/.bashrc.d/ tree"
  echo "  $THECMD"
fi

