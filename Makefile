KDIR = /lib/modules/`uname -r`/build
obj-m := mwaitlatency.o
M := make -C ${KDIR} M=`pwd`

kernel:
	${M} modules


user:
	gcc -o test_latency ./test_latency.c -lpthread -lpfm -pthread
