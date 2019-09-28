sudo yum -y install epel-release
sudo yum -y install gcc libxml2 libxml2-devel libcurl libcurl-devel libpng libpng-devel libmcrypt libmcrypt-devel libtidy libtidy-devel libxslt libxslt-devel openssl-devel bison libjpeg-turbo-devel readline-devel autoconf libicu-devel
sudo yum --enablerepo=remi,remi-php70 install php-pecl-zip

PHPENV_ROOT=~/.phpenv
git clone https://github.com/CHH/phpenv.git ~/tmp/phpenv
pushd ~/tmp/phpenv/bin
  ./phpenv-install.sh
popd
git clone https://github.com/CHH/php-build.git $PHPENV_ROOT/plugins/php-build
# https://bugs.php.net/bug.php?id=76483
# workaround for 'error: system libzip must be upgraded to version >= 0.11' on centos7
# CONFIGURE_OPTS='--enable-zip --without-libzip' phpenv install 7.3.9

git clone https://github.com/ngyuki/phpenv-composer.git $PHPENV_ROOT/plugins/phpenv-composer
phpenv rehash
