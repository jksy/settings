# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

export PATH=$HOME/bin:$PATH

# User specific environment and startup programs
# rbenv
export RBENV_ROOT="$HOME/.rbenv"
if [ -f $RBENV_ROOT/bin/rbenv ]; then
  export PATH=$RBENV_ROOT/bin:$PATH
  eval "$(rbenv init -)"
  echo "enable rbenv"
fi

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
if [ -f $PYENV_ROOT/bin/pyenv ]; then
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
  echo "enable pyenv"
fi

# phpenv
export PHPENV_ROOT="$HOME/.phpenv"
if [ -f $PHPENV_ROOT/bin/phpenv ]; then
  export PATH=$PHPENV_ROOT/bin:$PATH
  eval "$(phpenv init -)"
  echo "enable phpenv"
fi

# goenv
export GOENV_ROOT="$HOME/.goenv"
if [ -f $GOENV_ROOT/bin/goenv ]; then
  export PATH="$GOENV_ROOT/bin:$PATH"
  eval "$(goenv init -)"
  echo "enable goenv"
fi

# rust
if [ -f ~/.cargo/env ]; then
  . ~/.cargo/env
  export PATH="$HOME/.cargo/bin:$PATH"
  echo "enable cargo(rust)"
fi

# Oracle
export ORACLE_HOME=/usr/lib/oracle/12.1/client64
export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
export NLS_LANG=Japanese_Japan.AL32UTF8

# JAVA
export JAVA_HOME=$(readlink /etc/alternatives/java | sed -e 's/\(\/jre\)\?\/bin\/java//g')
[[ -s $HOME/.gvm/scripts/gvm ]] && source $HOME/.gvm/scripts/gvm

# QT
export PATH=$PATH:/opt/rh/qt48/root/usr/lib64/qt4/bin

# Lynx
export LYNX_CFG=~/.lynxrc
