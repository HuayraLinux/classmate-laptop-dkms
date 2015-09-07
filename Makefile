obj-m += classmate-laptop.o

KVER  := $(shell uname -r)
KSRC := /lib/modules/$(KVER)/build
PWD := $(shell pwd)


all:
	$(MAKE) -C $(KSRC) M=$(PWD) modules

