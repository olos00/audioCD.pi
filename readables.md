# readables.md
A list of readables and references.

# References
[minidlna/readymedia (arch wiki)](https://wiki.archlinux.org/title/ReadyMedia)  
[minidlna-setup](https://www.instructables.com/Raspberry-Pi-Media-Server-MiniDLNA/)  

[using abcde](https://linuxconfig.org/how-to-rip-cds-from-the-linux-command-line)  
[abcde getalbumart](https://www.andrews-corner.org/abcde/getalbumart.html)  
[abcde-flac config](https://www.andrews-corner.org/abcde/abcde_lossless.html#flac)    

## ReadonlyFS PI
[readonly-raspberry-pi](https://medium.com/swlh/make-your-raspberry-pi-file-system-read-only-raspbian-buster-c558694de79)  
One additional step apart from the blog (check comments)
```
sudo rm -rf /var/spool
sudo mkdir /var/spool

# /etc/fstab
tmpfs /var/spool tmpfs nosuid,nodev 0 0
```

### Custom History file for rofs PI  
```
HISTFILE=/tmp/.zsh_history
```

### Quick swtich and ohmyzsh-prompt For ROFS
```
alias ro='sudo mount -o remount,ro / ; sudo mount -o remount,ro /boot'
alias rw='sudo mount -o remount,rw / ; sudo mount -o remount,rw /boot'

# zsh ruby prompt
function ruby_prompt_info() {
 # Display the current fs state
 fs_mode=$(mount | sed -n -e "s/^\/dev\/.* on \/ .*(\(r[w|o]\).*/\1/p")
 echo "[$fs_mode]"
}
```
