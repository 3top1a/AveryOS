# ly dm
git clone --recurse-submodules https://github.com/nullgemm/ly.git
cd ly
make
make install
systemctl enable ly.service
