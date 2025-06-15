# Overview

In some carrier boards the USB Ports are not enabled while using a [Banana PI BPI-CM4](https://wiki.banana-pi.org/Banana_Pi_BPI-CM4)

## Quick Fix

Run: 
```bash
curl -s https://raw.githubusercontent.com/riktam/bananapi-cm4-usb/main/meson-g12b-bananapi-cm4-waveshare-usb.sh | sudo bash
```
and reboot for the changes to be applied.


# Tested Enviroments:

- [ ] Armbian / Debian Bookworm 25.5.1
- [x] Armbian / Ubunbtu Noble Bookworm 25.5.1


# Tested Hardware:

The following carrier boards do not work without the fix:

- [x] [Compute blade](https://computeblade.com/) 
- [ ] [DeskPi Super6C](https://wiki.deskpi.com/super6c/)
- [X] [Waveshare CM4-IO-BASE-A](https://www.waveshare.com/wiki/CM4-IO-BASE-A)
- [ ] [Compute Module 4 IO Board](https://www.raspberrypi.com/products/compute-module-4-io-board/)


# Credits

Posts with original solutions: 

- https://forum.banana-pi.org/t/bpi-cm4-with-mcuzone-board-no-usb-port-works/15552/13
- https://forum.armbian.com/topic/30113-bananapi-cm4-add-force-usb-host-mode-capability/
