$(sh build.sh > config.mk)
include config.mk

CFLAGS = -I . -I ./webrtc
ROOT = $(shell pwd)

.PHONY: test dist ave

all:
	mkdir -p $(DIST_LIB_DIR)
	mkdir -p $(DIST_OBJ_DIR)
	mkdir -p $(DIST_INC_DIR)
	cd webrtc/modules/audio_device; make ROOT=$(ROOT)
	cd webrtc/system_wrappers/source; make ROOT=$(ROOT)
	cd webrtc/common_audio/signal_processing; make ROOT=$(ROOT)
	cd webrtc/common_audio/vad; make ROOT=$(ROOT)
	cd webrtc/common_audio/resampler; make ROOT=$(ROOT)
	cd webrtc/modules/audio_processing/utility; make ROOT=$(ROOT)
	cd webrtc/modules/audio_processing/aec; make ROOT=$(ROOT)
	cd webrtc/modules/audio_processing/agc; make ROOT=$(ROOT)
	cd webrtc/modules/audio_processing/ns; make ROOT=$(ROOT)
	#cd webrtc/modules/audio_processing/aecm; make ROOT=$(ROOT)
	#cd webrtc/modules/audio_processing; make ROOT=$(ROOT)
	cd ave; make ROOT=$(ROOT)
	make dist

a:


test:
	make ave
	cd test; make ROOT=$(ROOT)

dist:
	ar -cru $(DIST_LIB_DIR)/libave.a $(DIST_OBJ_DIR)/*.o
	cp ave/audio_device.h $(DIST_INC_DIR)

clean:
	rm -rf dist/lib/* dist/obj/* dist/include/*
