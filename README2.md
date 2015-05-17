README for lat_syscall use
=============
*to run UC_LAT_SYSCALL.sh successfully, you need to do
	- Download [arm-2010q1-189-arm-uclinuxeabi-i686-pc-linux-gnu.tar.bz2](https://sourcery.mentor.com/public/gnu_toolchain/arm-uclinuxeabi/arm-2010q1-189-arm-uclinuxeabi-i686-pc-linux-gnu.tar.bz2) from Mentor Graphics
	- extrace under /usr/local/csl
```
    tar jxvf arm-2010q1-189-arm-uclinuxeabi-i686-pc-linux-gnu.tar.bz2
	cp arm-2010q1 /usr/local/csl
```

*compile lat_syscall source codes and execute script
```
    make
	./UC_LAT_SYSCALL.sh
```

