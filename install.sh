#!/bin/sh

cd "$(dirname "${BASH_SOURCE}")";

mkdir -p ./.config/

echo "Links .vimrc."

if [ -e ~/.vimrc ]
then
    echo "Found an existing .vimrc. Moved it to .vimrc.pre_script"
    mv ~/.vimrc ~/.vimrc.pre_script
fi

if [ -d  ~/.config ]
then
    echo "Found an existing directory for config file."
    echo "Moved it from ~/.config to ~/config.pre_script"
    mv ~/.config ~/config.pre_script
fi

cp -r config/ ~/.config

echo "source $HOME/.config/vim/vimrc" > ~/.vimrc
echo "source $HOME/.config/vim/plugins.vim" >> ~/.vimrc
echo "source $HOME/.config/vim/shortcuts.vim" >> ~/.vimrc
ln -s ~/.vim $HOME/.config/nvim

echo "Install oh-my-zsh."
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.config/oh-my-zsh

echo "Links .zshrc."
if [ -e ~/.zshrc ]
then
    echo "Found an existing .zshrc. Moved it to .zshrc.pre_script"
    mv ~/.zshrc ~/.zshrc.pre_script
fi

echo "source $HOME/.config/zsh/zshrc" > ~/.zshrc

echo "Install git config."
cp -i git/gitconfig ~/.gitconfig
cp -i git/gitignore ~/.gitignore

echo "Install Homebrew."
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Install software using Homebrew."
./brew.sh

echo "Install pip"
curl https://bootstrap.pypa.io/get-pip.py /tmp/get-pip.py
python /tmp/get-pip.py
python3 /tmp/get-pip.py

echo "Install pip packages"
pip3 install neovim
pip install virtualenv

echo "Install vim plugins."
mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
vim +NeoBundleInstall +qall

echo "Install npm packages."
yarn global add ios-deploy

echo "Change default shell to zsh."
chsh -s /bin/zsh

