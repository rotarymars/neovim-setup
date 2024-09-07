sudo apt update
sudo apt install curl git clang clangd exuberant-ctags pip
pip3 install jedi
bash ./install-neovim.sh
bash ./install-nodejs.sh
bash ./vim-plug-install.sh
mkdir -p ~/.config/nvim
cp ./coc-settings.json ~/.config/nvim/coc-settings.json
cp ./init.vim ~/.config/nvim/init.vim

