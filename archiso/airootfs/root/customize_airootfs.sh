# ly dm
git clone --recurse-submodules https://github.com/nullgemm/ly.git
cd ly
make
make install
systemctl enable ly.service

systemctl enable lightdm.service
systemctl start lightdm.service

echo "--------------------"
file /etc/systemd/system/display-manager.service
echo "------!----!--------"
