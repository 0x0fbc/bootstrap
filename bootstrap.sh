sudo apt-get update
sudo apt-get dist-upgrade -y

sudo apt-get install git build-essential zsh zsh-autosuggestions zsh-syntax-highlighting tmux neovim gdb fonts-ibm-plex -y

git clone https://github.com/zsh-users/zsh-history-substring-search.git /usr/share/zsh/plugins/zsh-history-substring-search
cp ./rcfiles/.zshrc ~/.zshrc

update-alternatives --set vim $(which nvim)
mkdir -p ~/.config/nvim
cp ./rcfiles/init.vim ~/.config/nvim/init.vim

git clone https://github.com/cyrus-and/gdb-dashboard.git /tmp/gdb-dashboard
cp /tmp/gdb-dashboard/.gdbinit ~/.gdbinit
rm -r /tmp/gdb-dashboard

cp ./rcfiles/.tmux.conf ~/.tmux.conf
