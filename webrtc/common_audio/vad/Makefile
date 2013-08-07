include $(ROOT)/build.mk

OUT_LIB := $(DIST_LIB_DIR)/libwebrtc_vad.a
LOCAL_SRC_FILES := \
    webrtc_vad.c \
    vad_core.c \
    vad_filterbank.c \
    vad_gmm.c \
    vad_sp.c


all:
	$(C) -c $(LOCAL_SRC_FILES) $(CFLAGS)
	ar -cru $(OUT_LIB) *.o
