CROSS_COMPILE ?= arm-linux-gnueabi-

CC	:= $(CROSS_COMPILE)gcc
CFLAGS	?=  -Wall -I./linux 
LDFLAGS	?=  -static -L./lib -ljpeg

%.o : %.c
	$(CC) $(CFLAGS) -c -o $@ $<

all: v4l2_cam

v4l2_cam: v4l2_cam.o libjpeg.a
	$(CC) $(LDFLAGS) -o $@ $^ $(LIBS)

clean:
	-rm -f *.o
	-rm -f v4l2_cam

