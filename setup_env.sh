sudo -E apt-get update
sudo -E apt-get install -y ack antlr3 asciidoc autoconf automake autopoint binutils bison build-essential \
bzip2 ccache cmake cpio curl device-tree-compiler fastjar flex gawk gettext gcc-multilib g++-multilib \
git gperf haveged help2man intltool libc6-dev-i386 libelf-dev libfuse-dev libglib2.0-dev libgmp3-dev \
libltdl-dev libmpc-dev libmpfr-dev libncurses5-dev libncursesw5-dev libpython3-dev libreadline-dev \
libssl-dev libtool lrzsz mkisofs msmtp ninja-build p7zip p7zip-full patch pkgconf python2.7 python3 \
python3-pyelftools python3-setuptools qemu-utils rsync scons squashfs-tools subversion swig texinfo \
uglifyjs upx-ucl unzip vim wget xmlto xxd zlib1g-dev
rm -rf /tmp/openwrt
cd /tmp && git clone https://github.com/immortalwrt/immortalwrt.git -b v24.10.0 openwrt
cd /tmp/openwrt && ./scripts/feeds update -a && ./scripts/feeds install -a
cd /tmp/openwrt && make menuconfig
