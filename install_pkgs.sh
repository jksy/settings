sudo apt install -y screen git git-lfs wget lsof telnet tcpdump telnet nmap universal-ctags bash-completion curl neovim libfuse-dev \
                    curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev \
                    libffi-dev libgdbm-dev libcurl4-openssl-dev

mkdir -p ~/local/bin
pushd ~/local/bin
  curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
  chmod u+x nvim.appimage
popd

# sudo add-apt-repository ppa:cncf-buildpacks/pack-cli
# sudo apt-get update
# sudo apt-get install pack-cli
