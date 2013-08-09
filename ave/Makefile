include $(ROOT)/config.mk

CLIBS += \
	-framework ApplicationServices \
	-framework AudioToolbox \
	-framework CoreAudio

all:
	$(CC) -o ave_audio_device_impl.o  -c audio_device_impl.cpp $(CFLAGS)
	cp *.o $(DIST_OBJ_DIR)

	
	