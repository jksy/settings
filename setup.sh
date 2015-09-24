cd $HOME/settings
for f in $HOME/settings/.*; do
  ln -s $HOME/settings/`basename $f` $HOME/`basename $f`
done;
