sudo yum -y install git openssl-devel readline-devel zlib-devel libcurl-devel bzip2 gcc
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
export PATH=$PATH:~/.rbenv/bin
eval "$(rbenv init -)"
echo eval "\"\$(rbenv init -)\"" >> ~/.bash_profile
rbenv install 2.3.0

mkdir -p bash_completion.d
wget -O bash_completion.d/rake https://raw.githubusercontent.com/ai/rake-completion/master/rake

rbenv exec gem install refe2
bitclust setup
