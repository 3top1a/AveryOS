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
