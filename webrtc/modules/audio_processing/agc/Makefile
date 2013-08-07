include $(ROOT)/build.mk

OUT_LIB := $(DIST_LIB_DIR)/libwebrtc_agc.a
LOCAL_SRC_FILES := \
    analog_agc.c \
    digital_agc.c


all:
	$(C) -c $(LOCAL_SRC_FILES) $(CFLAGS)
	ar -cru $(OUT_LIB) *.o
