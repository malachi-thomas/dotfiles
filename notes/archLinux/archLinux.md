**link** [../index.md](https://github.com/malachi557/dotfiles3/blob/master/notes/index.md)
# Arch Linux Notes

### Install Steps

1. Install it from https://www.archlinux.org/download/
2. Connect to the internet  
```bash
rfkill unblock wifi  
```
3. Something to do with time accuracy  
```bash
timedatectl set-ntp true
```
4. Check your disk partitions
```bash
lsblk
```
5. Make your Linux disk partitions
```bash
fdisk /dev/nvme0n1
```
6. Format your disk partitions
```bash
mkfs.ext4 /dev/nvme0n1p2
mount /dev/nvme0n1p2 /mnt
```
7. Install the basic packages
```bash
pacstrap /mnt base linux linux-firmware
```
8. Configure the system
```bash
genfstab -U /mnt >> /mnt/etc/fstab
```
9. Chroot into /mnt
```bash
arch-chroot /mnt
```
10. Set time zone
```bash
ln -sf /usr/share/zoneinfo/Europe/London /etc/localtime
hwclock --systohc
```
11. Set the locale
```bash
locale-gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf
```
12. Set your host name
```bash
echo "malachi" > /etc/hostname
echo "127.0.0.1	localhost
::1		localhost
127.0.1.1	malachi.localdomain	malachi" > /etc/hosts
```
13. Set the root password
```bash
passwd
```
14. Make your user and password
```bash
useradd -m malachi
passwd malachi
14. Boot loader
```bash

```
