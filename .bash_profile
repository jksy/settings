# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
export GOPATH=$HOME
export PATH=$HOME/bin:~/.rbenv/bin:$PATH:$HOME/node_modules/.bin

# rbenv
export PATH=$HOME/bin:$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export ORACLE_HOME=/usr/lib/oracle/12.1/client64
export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
export NLS_LANG=Japanese_Japan.AL32UTF8

export JAVA_HOME=$(readlink /etc/alternatives/java | sed -e 's/\(\/jre\)\?\/bin\/java//g')
[[ -s $HOME/.gvm/scripts/gvm ]] && source $HOME/.gvm/scripts/gvm

export PATH=$PATH:/opt/rh/qt48/root/usr/lib64/qt4/bin
export LYNX_CFG=~/.lynxrc
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
