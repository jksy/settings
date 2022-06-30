sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
sudo yum install -y epel-release
sudo yum install -y screen git git-lfs wget lsof tcpdump telnet nmap nmap-netcat ctags bash-completion.noarch the_silver_searcher

mkdir ~/local/bin
pushd ~/local/bin
  curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
  chmod u+x nvim.appimage
popd
