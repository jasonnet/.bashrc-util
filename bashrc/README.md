These are a set of routines that are handy when included in the .bashrc file.


The suggested usage is to create a `~/.bashrc.d` directory that contains links to files in this directory.
Bash does not natively support `~/.bashrc.d` so you'll need to include in your ~/.bashrc file something
like the following.

```
### support ~/.bashrc.d/ ###
if [ -d "${HOME}/.bashrc.d" ]; then
  OLDSHOPT=$(shopt -p nullglob)  # store the nullglob setting
  shopt -s nullglob  # set nullglob to prevent the following loops from generating warnings on empty directories
  for file in ${HOME}/.bashrc.d/*.source; do
    source "$file"
  done
  # Allow there to be whole subdirectories imported wholesale
  for dirr in ${HOME}/.bashrc.d/*.d/; do
    for file in ${dirr}/*.source; do
      source "$file"
    done
  done
  eval "$OLDSHOPT"  # retore nullglob to original value
else
  echo "consider adding ~/.bashrc.d/*.source with local bash customizations"
fi
```
