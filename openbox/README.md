# Raspbian Stretch Lite - Custom OpenBox

Lord BaseX (c) 2018
 Federico Pereira <fpereira@cnsoluciones.com>

This code is distributed under the GNU LGPL v3.0 license.



## Installation Packages


```bash
apt -y install openbox
apt -y install --no-install-recommends xserver-xorg
apt -y install --no-install-recommends xinit
```

Create file to initialize openbox at startup.

```bash
cat > /etc/systemd/system/openbox.service <<ENDLINE
[Unit]
Description=Server X
DefaultDependencies=no
After=getty.target

[Service]
ExecStart=/usr/bin/startx

[Install]
ENDLINE
```


## Custom OpenBox

Edit with the vim command the file /etc/X11/openbox/menu.xml remove all the tags <item .. </ item> Or download the file already modified.
With this we will deactivate the default menu.

```bash
wget https://raw.githubusercontent.com/lordbasex/custom-image-raspberry/master/openbox/menu.xml -O /etc/X11/openbox/menu.xml
```
## Custom Windows
To eliminate the frame of the window which has: title, minimize and maximize buttons you have to add some lines in the file /etc/X11/openbox/rc.xml in line 658.

```bash
<application name="ladie">
<decor>no</decor>
</application>
```
Note: in the application tag the name has to be the name of the binary that we are going to execute to eliminate the frames and buttons. In this example the name of the application is ladie.

Another option is to download the already modified file.
```bash
wget https://raw.githubusercontent.com/lordbasex/custom-image-raspberry/master/openbox/rc.xml -O/etc/X11/openbox/rc.xml
```
## AutoRum
We add in the file /etc/X11/openbox/autorun at the end of the last line the name of the command with the path where it is found and then we will set it to & to run in the background. In this example the command is called ladie is in the directory /home/pi/

```bash 
vim /etc/X11/openbox/autorun
...
...
/home/pi/ladie &
```

## More Doc

```
https://wiki.archlinux.org/index.php/Openbox
```
