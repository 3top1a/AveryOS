
# Zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp -r /root/.oh-my-zsh /avery/.oh-my-zsh
cp -r /root/.zshrc     /avery/.zshrc

systemctl enable NetworkManager
systemctl disable ModemManager

# ly dm
git clone --recurse-submodules https://github.com/nullgemm/ly.git
cd ly
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
git clone https://git.suckless.org/tabbed
cd tabbed
make
make install
