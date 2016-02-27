sudo yum -y install git openssl-devel readline-devel zlib-devel libcurl-devel bzip2 gcc
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
eval "$(rbenv init -)"
rbenv install --list
