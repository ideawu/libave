include $(ROOT)/build.mk

OUT_LIB := $(DIST_LIB_DIR)/libwebrtc_resampler.a
LOCAL_SRC_FILES := \
	resampler.cc


all:
	$(CC) -c $(LOCAL_SRC_FILES) $(CFLAGS)
	ar -cru $(OUT_LIB) *.o
