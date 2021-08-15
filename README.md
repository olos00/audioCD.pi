# audioCD.pi
audioCD.pi contains bash functions that rips and streams CDs on a readonly raspberri pi

### Description
audioCD.pi uses abcde to rip CDs  
Storing these files in a ramdisk, ideally a tmpfs in `~/.ramdisk`
minidlna to stream it to a upnp reciever  

Preconfigured for flac files, configurations can be found in `config` dir, update or replace below files  
```
~/.abcde.conf
/etc/minidlna.conf
```

## Prerequisites
```  
sudo apt install minidlna abcde flac eject  
mkdir ~/.ramdisk
```

## Usage
```
run_audioCD
```


