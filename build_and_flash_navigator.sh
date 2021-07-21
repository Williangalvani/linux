
KERNEL=kernel7l
#make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- bcm2711_defconfig
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- bcm2711_navigator_defconfig
make -j24 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- zImage modules dtbs
sudo env PATH=$PATH make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- INSTALL_MOD_PATH=/var/run/media/will/rootfs modules_install
sudo cp arch/arm/boot/zImage /var/run/media/will/boot/$KERNEL.img
sudo cp arch/arm/boot/dts/*.dtb /var/run/media/will/boot/
sudo cp arch/arm/boot/dts/overlays/*.dtb* /var/run/media/will/boot/overlays
sudo cp arch/arm/boot/dts/overlays/README /var/run/media/will/boot/overlays
