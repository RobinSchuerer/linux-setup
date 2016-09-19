# Setup Linux Entwicklungsumgebung
## Installation
Standard Installation mit Verschlüsselung der Festplatte

Folgende Pakete sollten installiert werden:
* git
* guake (Terminal)
* mc
* maven 
* ansible (remote Admin)
* shutter (Screenshot-Tool)
* conky
* npm
* nodejs

## IDE Installation
Alle IDEs müssen von [http://www.jetbrains.com] heruntergeladen werden.

* Idea
* Webstorm
* DataGrip

## Chrome Installation
```bash
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

sudo apt-get update
sudo apt-get install google-chrome-stable
```

## Java Installation
```bash
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get install oracle-java8-installer 
```


# Einrichtung
## Autostart
### Guake
Erstellen einer Datei: ```~/.config/autostart/quake.desktop``` mit folgendem Imhalt:
```
[Desktop Entry]
Type=Application
Exec=guake
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name[de_DE]=Guake Terminal
Name=Guake Terminal
```

## SSH
1. Erzeugung ssh keys
1. pub key bei github hinterlegen

## Themes Installation
GTK Theme DeLoreanDark
Icons
Chrome

## Conky Konfiguration
