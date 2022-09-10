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

[[ -s "/home/jksy/.gvm/scripts/gvm" ]] && source "/home/jksy/.gvm/scripts/gvm"
source ~/.git-prompt.sh
export PS1="[\[\e[34m\]\u\[\e[m\]\[\e[34m\]@\[\e[m\]\[\e[34m\]\h\[\e[m\] \[\e[36;40m\]\w\[\e[m\] \[\e[32m\]\`__git_ps1\`\[\e[m\]] "


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/jksy/google-cloud-sdk/path.bash.inc' ]; then . '/home/jksy/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/jksy/google-cloud-sdk/completion.bash.inc' ]; then . '/home/jksy/google-cloud-sdk/completion.bash.inc'; fi

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /home/jksy/src/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /home/jksy/src/serverless/node_modules/tabtab/.completions/serverless.bash

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/local/bin" ] ; then
    PATH="$HOME/local/bin:$PATH"
fi

export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# for rbenv on ubuntu 22
# https://github.com/rbenv/ruby-build/discussions/1940
export RUBY_CONFIGURE_OPTS=--with-openssl-dir=/opt/openssl-1.1.1o
. "$HOME/.cargo/env"

# https://starship.rs/ja-JP/guide/#🚀-インストール
eval "$(starship init bash)"
