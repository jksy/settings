# .bash_profile

# Get the aliases and functions
if [ -f ~/.profile ]; then
	. ~/.profile
fi

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

# rust
if [ -f ~/.cargo/env ]; then
  . ~/.cargo/env
    echo "enable cargo(rust)"
fi

# Oracle
export ORACLE_HOME=/usr/lib/oracle/12.2/client64
export LD_LIBRARY_PATH=/usr/lib/oracle/12.2/client64/lib:~/local/lib
export NLS_LANG=Japanese_Japan.AL32UTF8

# local
export PATH=$PATH:$HOME/local/bin/

# Lynx
export LYNX_CFG=~/.lynxrc

# aws-vault
export AWS_VAULT_BACKEND=file

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# for rbenv on ubuntu 22
# https://github.com/rbenv/ruby-build/discussions/1940
export RUBY_CONFIGURE_OPTS=--with-openssl-dir=/opt/openssl-1.1.1o

# buildpack
. $(pack completion)
