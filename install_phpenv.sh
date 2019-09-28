sudo yum -y install epel-release
sudo yum -y install gcc libxml2 libxml2-devel libcurl libcurl-devel libpng libpng-devel libmcrypt libmcrypt-devel libtidy libtidy-devel libxslt libxslt-devel openssl-devel bison libjpeg-turbo-devel readline-devel autoconf

PHPENV_ROOT=~/.phpenv
git clone https://github.com/CHH/phpenv.git ~/tmp/phpenv
pushd ~/tmp/phpenv/bin
  ./phpenv-install.sh
popd
git clone https://github.com/CHH/php-build.git $PHPENV_ROOT/plugins/php-build
