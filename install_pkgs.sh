sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
sudo yum install -y epel-release
sudo yum install -y screen git wget lsof tcpdump telnet nmap nmap-netcat ctags bash-completion.noarch

# install git lfs
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.rpm.sh | sudo bash
sudo yum install -y git-lfs
git lfs install

mkdir ~/local/bin
pushd ~/local/bin
  curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
  chmod u+x nvim.appimage
popd
