# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
if [ -f ~/.aliases ]; then
	. ~/.aliases
fi

for file in ~/settings/plugin/**/*.sh; do
  if [ -f $file ]; then
    . $file
  fi
done

