sudo apt update
sudo apt install curl git clang clangd exuberant-ctag pip3
pip3 install jedi
bash ./install-neovim.sh
bash ./install-nodejs.sh
bash ./vim-plug-install.sh
cp ./coc-settings.json ~/.config/nvim/coc-settings.json
cp ./init.vim ~/.config/nvim/init.vim

