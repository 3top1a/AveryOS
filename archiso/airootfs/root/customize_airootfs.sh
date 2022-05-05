# Zsh
export CHSH="no"
export RUNZSH="no"
export KEEP_ZSHRC="yes"
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions
git clone https://github.com/agkozak/zsh-z ~/.oh-my-zsh/plugins/zsh-z
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all --completion --no-update-rc --key-bindings

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /usr/share/zsh-theme-powerlevel10k

cd
cp -r .oh-my-zsh /home/avery/.oh-my-zsh

systemctl enable NetworkManager
systemctl disable ModemManager
systemctl disable bluetooth #Since I don't always need bluetooth

# ly dm
cd /home/avery
git clone --recurse-submodules https://github.com/nullgemm/ly.git /home/avery/ly
cd /home/avery/ly
make
make install
systemctl enable ly.service

cd /home/avery/st
make
make install

cd /home/avery/surf
make
make install

cd /home/avery
git clone https://git.suckless.org/tabbed /home/avery/tabbed
cd /home/avery/tabbed
make
make install
