sudo apt update
sudo apt install curl git clang clangd exuberant-ctags pip
pip3 install jedi
bash ./install-neovim.sh
bash ./install-nodejs.sh
bash ./vim-plug-install.sh
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/14.1.0/ripgrep_14.1.0-1_amd64.deb
sudo dpkg -i ripgrep_14.1.0-1_amd64.deb
mkdir -p ~/.config/nvim
cp ./coc-settings.json ~/.config/nvim/coc-settings.json
cp ./init.vim ~/.config/nvim/init.vim

