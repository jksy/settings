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

# added by Anaconda2 4.1.1 installer
export PATH="/home/jksy/anaconda2/bin:$PATH"

[[ -s "/home/jksy/.gvm/scripts/gvm" ]] && source "/home/jksy/.gvm/scripts/gvm"
source ~/.git-prompt.sh
export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/jksy/google-cloud-sdk/path.bash.inc' ]; then . '/home/jksy/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/jksy/google-cloud-sdk/completion.bash.inc' ]; then . '/home/jksy/google-cloud-sdk/completion.bash.inc'; fi

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /home/jksy/src/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /home/jksy/src/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /home/jksy/src/serverless/node_modules/tabtab/.completions/sls.bash ] && . /home/jksy/src/serverless/node_modules/tabtab/.completions/sls.bash
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /home/jksy/src/serverless/node_modules/tabtab/.completions/slss.bash ] && . /home/jksy/src/serverless/node_modules/tabtab/.completions/slss.bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
