# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
export GOPATH=$HOME
export PATH=$HOME/bin:$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

export ORACLE_HOME=/usr/lib/oracle/12.1/client64
export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
export NLS_LANG=Japanese_Japan.AL32UTF8

export JAVA_HOME=$(readlink /etc/alternatives/java | sed -e 's/\/jre\/bin\/java//g')
