sudo apt-get update
sudo apt-get dist-upgrade -y

sudo apt-get install git build-essential zsh zsh-autosuggestions zsh-syntax-highlighting tmux neovim gdb fonts-ibm-plex -y
sudo apt-get install bspwm sxhkd dunst polybar qterminal

sudo mkdir -p /usr/share/zsh/plugins
sudo git clone https://github.com/zsh-users/zsh-history-substring-search.git /usr/share/zsh/plugins/zsh-history-substring-search
cp ./rcfiles/.zshrc ~/.zshrc

sudo update-alternatives --set vim $(which nvim)
mkdir -p ~/.config/nvim
cp ./rcfiles/init.vim ~/.config/nvim/init.vim

sudo apt-get install python3 python3-pip
pip3 install gdbgui

mkdir -p ~/.config/qterminal.org
rm -f ~/.config/qterminal.org/qterminal.ini
cp ./rcfiles/qterminal.ini ~/.config/qterminal.org/qterminal.ini

cp -r ./rcfiles/bspwm ~/.config/bspwm
cp -r ./rcfiles/sxhkd ~/.config/sxhkd
cp -r ./rcfiles/polybar ~/.config/polybar
