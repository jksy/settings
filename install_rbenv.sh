sudo yum -y install git openssl-devel readline-devel zlib-devel libcurl-devel bzip2 gcc
RBENV_ROOT=~/.rbenv
git clone https://github.com/sstephenson/rbenv.git $RBENV_ROOT
git clone https://github.com/sstephenson/ruby-build.git $RBENV_ROOT/plugins/ruby-build
git clone https://github.com/rkh/rbenv-update.git $RBENV_ROOT/plugins/rbenv-update
git clone https://github.com/tpope/rbenv-ctags.git $RBENV_ROOT/plugins/rbenv-ctags

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
export PATH=$PATH:~/.rbenv/bin
eval "$(rbenv init -)"
echo eval "\"\$(rbenv init -)\"" >> ~/.bash_profile
rbenv install 2.6.2

mkdir -p bash_completion.d
wget -O bash_completion.d/rake https://raw.githubusercontent.com/ai/rake-completion/master/rake

rbenv exec gem install refe2
bitclust setup
