CROSS=/usr/local/oecore-x86_64/sysroots/x86_64-angstromsdk-linux/usr/bin/armv7a-vfp-neon-angstrom-linux-gnueabi/arm-angstrom-linux-gnueabi-

all:
	make -C src CROSS=$(CROSS) 
	make -C examples CROSS=$(CROSS) 
	make -C dts CROSS=$(CROSS)

clean:
	make -C src clean
	make -C examples clean
	make -C dts clean
