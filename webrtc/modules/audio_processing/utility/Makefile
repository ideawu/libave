include $(ROOT)/build.mk

OUT_LIB := $(LIBS_DIR)/libwebrtc_apm_utility.a
LOCAL_SRC_FILES := \
    fft4g.c \
    ring_buffer.c \
    delay_estimator.c \
    delay_estimator_wrapper.c


all:
	gcc -c $(LOCAL_SRC_FILES) $(CFLAGS)
	ar -cru $(OUT_LIB) *.o
