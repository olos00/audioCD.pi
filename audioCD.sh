function create_ramdisk(){
 sudo mount -t tmpfs -o size=1024m tmpfs /home/pi/.ramdisk
 sudo chmod 755 /home/pi/.ramdisk
 sudo chown pi:pi /home/pi/.ramdisk
 cd /home/pi/.ramdisk
}

function rip() {
 sudo abcde -d /dev/sr0 -o flac -G -N
 eject
}

function start_upnp() {
 sudo systemctl restart minidlna
}

function run_audioCD() {
 create_ramdisk
 start_upnp
 rip
}
