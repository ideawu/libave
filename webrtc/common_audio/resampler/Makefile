include $(ROOT)/build.mk

OUT_LIB := $(LIBS_DIR)/libwebrtc_resampler.a
LOCAL_SRC_FILES := resampler.cc


all:
	g++ -c $(LOCAL_SRC_FILES) $(CFLAGS)
	ar -cru $(OUT_LIB) *.o
