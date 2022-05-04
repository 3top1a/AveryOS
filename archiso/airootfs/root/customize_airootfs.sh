# Powersave
powertop --auto-tune

# Zsh
export CHSH="no"
export RUNZSH="no"
export KEEP_ZSHRC="yes"
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

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
usermod -aG autologin avery

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
