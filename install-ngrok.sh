#!bin/bash
#colors
#
#
#
#
green='\033[1;32m'
red='\033[1;31m'
yellow='\033[1;33m'
cyan='\033[36m'
magneta='\033[1;35m'
reset='\033[0m'
#
#
#
rm -rf $PREFIX/bin/ngrok
rm -rf $HOME/ngrok

pkg install wget proot resolv-conf -y


case `dpkg --print-architecture` in
aarch64)
    arch="arm64" ;;
arm)
    arch="arm" ;;
armhf)
    arch="arm" ;;
amd64)
    arch="amd64" ;;
i*86)
    arch="386" ;;
x86_64)
    arch="amd64" ;;
*)
    echo -e  "$green Unsupported Architecture ..."
esac


wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-${arch}.zip -O ngrok.zip

unzip ngrok.zip
rm ngrok.zip

echo
echo -e "$green Sucessfully Installed ..."

echo -e "$magneta login : ./ngrok authtoken <$yellow Your Authtoken $magneta >"
echo -e "$reset"




