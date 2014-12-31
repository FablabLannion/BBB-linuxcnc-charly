obj-m := rtmodeqep.o
KSRC := /home/fabmanager/BeagleBoneBlack/linux-dev/KERNEL
ARCH := arm
CROSS := /home/fabmanager/BeagleBoneBlack/linux-dev/dl/gcc-linaro-arm-linux-gnueabihf-4.7-2013.04-20130415_linux/bin/arm-linux-gnueabihf-
DEBUG := 1
EXTRA_CFLAGS := -I$(KSRC)/include/xenomai -I$(KSRC)/include/xenomai/posix -I$(KSRC)/arch/arm/mach-omap2

all:
	make -C $(KSRC) ARCH=arm CROSS_COMPILE=$(CROSS) $(EXTRA_CFLAGS) M=$(shell pwd) modules
clean:
	make -C $(KSRC) ARCH=arm CROSS_COMPILE=$(CROSS) M=$(shell pwd) clean
