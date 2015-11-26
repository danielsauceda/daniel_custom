sudo su
cd /
tar -cvpzf backup.tar.gz --exclude=/backup.tar.gz --exclude=/proc --exclude=/sys --exclude=/mnt --exclude=/run --exclude=/dev --exclude=/media --exclude=/lost+found --exclude=/tmp --exclude=/vmlinuz --exclude=/initrd.img --exclude=~/.cache /
