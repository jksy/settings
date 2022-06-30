# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export PATH=$HOME/bin:$HOME/local/bin:$PATH

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

# # phpenv
# export PHPENV_ROOT="$HOME/.phpenv"
# if [ -f $PHPENV_ROOT/bin/phpenv ]; then
#   export PATH=$PHPENV_ROOT/bin:$PATH
#   eval "$(phpenv init -)"
#   echo "enable phpenv"
# fi

# goenv
export GOENV_ROOT="$HOME/.goenv"
if [ -f $GOENV_ROOT/bin/goenv ]; then
  export PATH="$GOENV_ROOT/bin:$PATH"
  eval "$(goenv init -)"
  echo "enable goenv"
  # export GOPATH=$HOME/go/
  # export PATH=$PATH:$GOPATH/bin
  export GO111MODULE=on
fi

# yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# rust
if [ -f ~/.cargo/env ]; then
  . ~/.cargo/env
    echo "enable cargo(rust)"
fi

# Oracle
export ORACLE_HOME=/usr/lib/oracle/12.2/client64
export LD_LIBRARY_PATH=/usr/lib/oracle/12.2/client64/lib:~/local/lib
export NLS_LANG=Japanese_Japan.AL32UTF8

# JAVA
export JAVA_HOME=$(readlink /etc/alternatives/java | sed -e 's/\(\/jre\)\?\/bin\/java//g')
[[ -s $HOME/.gvm/scripts/gvm ]] && source $HOME/.gvm/scripts/gvm
export M3_HOME=/opt/apache-maven
M3=$M3_HOME/bin
export PATH=$M3:$PATH


# QT
export PATH=$PATH:/opt/rh/qt48/root/usr/lib64/qt4/bin

# Lynx
export LYNX_CFG=~/.lynxrc

# aws-vault
export AWS_VAULT_BACKEND=file

