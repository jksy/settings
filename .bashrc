# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias rg='bundle exec rake gen'
alias rt='bundle exec rake test'
