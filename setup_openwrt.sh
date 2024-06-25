sudo -E apt-get -qq update
sudo -E apt-get -qq install $(curl -fsSL git.io/depends-ubuntu-2004)

git clone https://github.com/openwrt/openwrt.git -b mian

cd openwrt && ./scripts/feeds update -a && ./scripts/feeds install -a
