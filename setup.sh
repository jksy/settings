rm ~/.bashrc ~/.bash_profile
cd $HOME/settings
for f in $HOME/settings/.*; do
  basename=`basename $f`
  if [ $basename != '.git' ]; then
    ln -s $HOME/settings/`basename $f` $HOME/`basename $f`
  fi
done;
