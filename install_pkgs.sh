sudo apt install -y screen git git-lfs wget lsof telnet tcpdump telnet nmap universal-ctags bash-completion curl neovim libfuse-dev

mkdir -p ~/local/bin
pushd ~/local/bin
  curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
  chmod u+x nvim.appimage
popd
