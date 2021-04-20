#!/bin/bash

export SELECTED_OS=""
export SELECTED_OS_NUM=""

clear
echo 'ExaGear cache creator by Grima04, based on instructions from Zhymabek Roman'

echo ''
echo 'Please select the Ubuntu version that you want to use for your cache:'
osOptions=("Ubuntu 16.04" "Ubuntu 18.04")
select OPT in "${osOptions[@]}"
do
	case $OPT in
		"Ubuntu 16.04")
			clear
			echo "Using $OPT to create the cache..."
			export SELECTED_OS="xenial"
			export SELECTED_OS_NUM="16.04"
			break
			;;
		"Ubuntu 18.04")
			clear
			echo "Using $OPT to create the cache..."
			export SELECTED_OS="bionic"
			export SELECTED_OS_NUM="18.04"
			break
			;;
		*)      echo "Invalid option $REPLY";;
	esac
done

echo 'Starting to download the Ubuntu rootfs...'

mkdir -p $SELECTED_OS
debootstrap --arch=i386 --variant=minbase $SELECTED_OS $SELECTED_OS http://mirror.yandex.ru/ubuntu

cp chroot.sh $SELECTED_OS
touch vars.txt
if [ $SELECTED_OS == "bionic" ]
then
	printf 'bionic' > vars.txt
elif [ $SELECTED_OS == "xenial" ]
then
	printf 'xenial' > vars.txt
fi
cp vars.txt $SELECTED_OS
cd $SELECTED_OS
mount proc -t proc ./proc
mount sys -t sysfs ./sys
mount --bind /dev ./dev
mount --bind /dev/pts ./dev/pts
chroot ./ /usr/bin/env -i HOME=/root TERM="$TERM" /bin/bash -l "chroot.sh"

sudo umount dev/pts dev proc sys

cd ..

cp -r cache-fixes/. $SELECTED_OS
cp -r libs/. $SELECTED_OS

cd $SELECTED_OS
zip --symlinks -r main.30.com.eltechs.ed.obb .
cp main.30.com.eltechs.ed.obb ../obb-cache

cd ..
rm -r $SELECTED_OS

clear

echo 'Done! You can now copy your .obb cache from obb-cache to your phone.'
