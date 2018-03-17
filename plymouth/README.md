#CUSTOM BOOTLOADER PLYMOUTH

* INSTALL PACKAGES

```bash
apt -y install plymouth plymouth-themes pix-plym-splash
```

```bash
cd /usr/share/plymouth/themes
cp -a pix ladie
cd ladie
sudo mv pix.plymouth ladie.plymouth
sudo mv pix.script ladie.script
sudo rm splash.png
sudo wget http://example.com/images/splash.png
sudo sed -i 's/pix/ladie/g; s/Raspberry Pi/My/g' ladie.plymouth
sudo sed -i 's/pix/ladie/g' /etc/plymouth/plymouthd.conf
```

#more doc: http://www.mlabviet.com/2017/10/hide-boot-message-on-rpi3-jessy.html

#comando utiles
#plymouth-set-default-theme --list
#sudo plymouthd --debug --debug-file=/tmp/plymouth-debug-out ; sudo plymouth --show-splash ; for ((I=0;I<10;I++)); do sleep 1 ; sudo plymouth --update=event$I ; done ;sudo  plymouth --quit
