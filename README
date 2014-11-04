This layer provides support for Atmel | SMART Connectivity and SMART microprocessors (AT91 & WILC1000)
========================================================================

For more information about the Atmel | SMART product line see:
http://www.atmel.com/products/microcontrollers/arm/
http://www.atmel.com/products/wireless/wifi/
Linux & Open Source on Atmel | SMART:
http://www.linux4sam.org


Supported SoCs / MACHINE names
==============================
- sama5d3-xplained
- WILC1000 SD pro


Sources
=======


Dependencies
============
This Layer depends on :
- linux-at91
URI: https://github.com/linux4SC/linux-at91

- wilc1000 firmware
URI: https://github.com/linux4SC/wilc_firmware


Build procedure
===============

1/ Clone buildroot-at91 git repository
git clone https://github.com/linux4SC/buildroot-at91.git

2/ Checkout buildroot-2013.11-at91
cd buildroot-at91
git checkout buildroot-2013.11-at91 -b my_branch

3/ Initialize default configuration
make sama5d3_xplained_defconfig

4/ build core image
make
# don't use -j option.
# if a qustion is displayed about qt during building, input 'o' and 'yes'.

5/ built binary path for kernel and rootfs
./output/images/
# use prebuilt binary for AT91Bootstrap and U-Boot. ( ftp://www.at91.com/pub/demo/linux4sam_4.3/linux4sam-poky-sama5d3_xplained-4.3.zip )