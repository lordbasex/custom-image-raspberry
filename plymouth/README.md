# Raspbian Stretch Lite - Custom BootLoader Plymouth

Lord BaseX (c) 2018
 Federico Pereira <fpereira@cnsoluciones.com>

This code is distributed under the GNU LGPL v3.0 license.



## Installation Packages


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
wget --no-check-certificate https://raw.githubusercontent.com/lordbasex/custom-image-raspberry/master/plymouth/ladie/splash.png -O /usr/share/plymouth/themes/ladie/splash.png 
sed -i 's/pix/ladie/g; s/Raspberry Pi/My/g' ladie.plymouth
sed -i 's/pix/ladie/g' /etc/plymouth/plymouthd.conf
```


## Useful Command

List theme
```bash
plymouth-set-default-theme --list
```

Test theme default
```bash
plymouthd --debug --debug-file=/tmp/plymouth-debug-out ; sudo plymouth --show-splash ; for ((I=0;I<10;I++)); do sleep 1 ; sudo plymouth --update=event$I ; done ;sudo  plymouth --quit
```

## More Doc

```
http://www.mlabviet.com/2017/10/hide-boot-message-on-rpi3-jessy.html
```
