include $(ROOT)/build.mk

OUT_LIB := $(DIST_LIB_DIR)/libwebrtc_audio_device.a
LOCAL_SRC_FILES := \
    audio_device_buffer.cc \
    audio_device_generic.cc \
    audio_device_utility.cc \
    audio_device_impl.cc \
    mac/audio_device_mac.cc \
    mac/audio_device_utility_mac.cc \
    mac/audio_mixer_manager_mac.cc \
	mac/portaudio/pa_ringbuffer.c

CFLAGS += \
	-I ./$(OS)

all:
	$(CC) -c $(LOCAL_SRC_FILES) $(CFLAGS)
	ar -cru $(OUT_LIB) *.o
