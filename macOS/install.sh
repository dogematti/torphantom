echo "******* TorPhantom Installer ********"
echo ""
echo "=====> Installing macchanger "
git clone https://github.com/shilch/macchanger
cd macchanger
echo "alias macchanger='$PWD/macchanger.sh'" >> ~/.zshrc
cd ../
echo "=====> Installing tor bundle "
sudo port install tor
sudo mv /opt/local/etc/tor/torrc.sample /opt/local/etc/tor/torrc
echo "=====> Installing TorPhantom "
sudo cp torphantom /usr/local/bin/
sudo chmod +x /usr/local/bin/torphantom
echo "=====> Done "
echo "=====> Open terminal and type 'torphantom' for usage "
