# VoCore2-feed
This feeds holds the SDK wifi driver and config for VoCore2 and some other handy utilities.

It is shamelessly plagarized from MediaTek-Labs/linkit-smart-7688-feed which works great so any problems you have were probably caused by me.

# Build the firmware from sources

This section describes how to build the firmware for the VoCore2 from source codes.


### Host environment
The following operations are performed under a Ubuntu LTS 14.04.3 environment. For a Windows or a Mac OS X host computer, you can install a VM for having the same environment:
* Download Ubuntu 14.04.3 LTS image from [http://www.ubuntu.com](http://www.ubuntu.com)
* Install this image with VirtualBox (http://virtualbox.org) on the host machine. 50GB disk space reserved for the VM is recommanded


### Steps
In the Ubuntu system, open the *Terminal* application and type the following commands:

1. Install prerequisite packages for building the firmware:
    ```
    $ sudo apt-get install git g++ make libncurses5-dev subversion libssl-dev gawk libxml-parser-perl unzip wget python xz-utils
    ```

2. Download modified OpenWrt CC source codes:
    ```
    $ git clone https://github.com/noblepepper/openwrt-chaoscalmer
    ```
3. Update the feed information of all available packages for building the firmware:
    
    ```
    $ ./scripts/feeds update -a
    ```
4. Install all packages:
    
    ```
    $ ./scripts/feeds install -a
    ```
5. Prepare the kernel configuration to inform OpenWrt that we want to build an firmware for VoCore2:
    
    ```
    $ make menuconfig
    ```
    * Select the options as below:
        * Target System: `Ralink RT288x/RT3xxx`
        * Subtarget: `MT7628 based boards`
        * Target Profile: `VoCore2`
    * Save and exit (**use the deafult config file name without changing it**)
8. Start the compilation process:
    
    ```
    $ make V=99
    ```
9. After the build process completes, the resulted firmware file will be under `bin/ramips/openwrt-ramips-mt7628-vocore2-squashfs-sysupgrade.bin`. Depending on the H/W resources of the host environment, the build process may **take more than 2 hours**.

10. You can use this file to do the firmware upgrade with sysupgrade or through Luci. You can also put it on a USB thumb drive and rename it to `root_uImage` for upgrading through das U-boot.

