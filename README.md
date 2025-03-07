This repo provides a number of handy bash scripts
that I'm likely to use on many machines.

## installation step 1 - git clone

Clone this repo into your home directory and rename it.
```
    cd ~
    git clone git@github.com:jasonnet/.jasonnet-bash-util.git
    mv jasonnet-bash-util .jasonnet-bash-util
```    

## installation step 2 - installing the ~/.bashrc support

To have this repos's ./bashrc.d/ files included when ~/.bashrc is run,
invoke the following to set up the directories and 
sym links.

```
    ./create-bashrc.d.sh
```

This will ensure that a ~/.bashrc.d/ directory 
exists.   It will also link this repo's ./bashrc 
subdirectory into that tree so that the functions 
that this repo provides are available to you.

Finally, it will check to ensure that the ~/.bashrc
file has been updated to include the contents
of the ~/.bashrc.d/ tree.   This check is not
very reliable, but the basic idea is that you should
ensure that you add the following lines to 
your ~/.bashrc file.

```
    # include the ~/.bashrc.d/ tree
    source ~/.jasonnet-bash-util/include-.bashrc.d-tree.source
```

