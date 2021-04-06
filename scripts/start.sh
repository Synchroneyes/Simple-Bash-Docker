bash interface.sh < test
unshare --cgroup --mount-proc --user -r --mount --pid --uts --net --fork bash -c "mount --rbind /sys vm/sys; mount --rbind /proc vm/proc; mount --rbind /dev vm/dev; /sbin/chroot vm/ bash" 
