# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
# GO
export GOPATH=$HOME
export PATH=$HOME/bin:~/.rbenv/bin:$PATH:$HOME/node_modules/.bin

# rbenv
export PATH=$HOME/bin:$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ORACLE
export ORACLE_HOME=/usr/lib/oracle/12.2/client64
export LD_LIBRARY_PATH=/usr/lib/oracle/12.2/client64/lib
export NLS_LANG=Japanese_Japan.AL32UTF8

# JAVA
export JAVA_HOME=$(readlink /etc/alternatives/java | sed -e 's/\(\/jre\)\?\/bin\/java//g')
[[ -s $HOME/.gvm/scripts/gvm ]] && source $HOME/.gvm/scripts/gvm

# QT
export PATH=$PATH:/opt/rh/qt48/root/usr/lib64/qt4/bin

# Lynx
export LYNX_CFG=~/.lynxrc

# Rust
if [ -f ~/.cargo/env ]; then
  . ~/.cargo/env
  export PATH="$HOME/.cargo/bin:$PATH"
fi
