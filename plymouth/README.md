RASPBIAN STRETCH LITE - CUSTOM BOOTLOADER PLYMOUTH

* INSTALL PACKAGES

```bash
apt -y install plymouth plymouth-themes pix-plym-splash
```

Using the pix themes as a base.

```bash
sudo su
cd /usr/share/plymouth/themes
cp -a pix ladie
cd ladie
mv pix.plymouth ladie.plymouth
mv pix.script ladie.script
rm splash.png
wget http://example.com/images/splash.png
sed -i 's/pix/ladie/g; s/Raspberry Pi/My/g' ladie.plymouth
sed -i 's/pix/ladie/g' /etc/plymouth/plymouthd.conf
```


* USEFUL COMMAND

List theme
```bash
plymouth-set-default-theme --list
```

Test theme default
```bash
plymouthd --debug --debug-file=/tmp/plymouth-debug-out ; sudo plymouth --show-splash ; for ((I=0;I<10;I++)); do sleep 1 ; sudo plymouth --update=event$I ; done ;sudo  plymouth --quit
```

* MORE DOC

```
http://www.mlabviet.com/2017/10/hide-boot-message-on-rpi3-jessy.html
```
