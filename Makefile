CFLAGS = -I . -I ./webrtc
ROOT = $(shell pwd)

all:
	cd webrtc/system_wrappers/source; make ROOT=$(ROOT)
	cd webrtc/common_audio/signal_processing; make ROOT=$(ROOT)
	cd webrtc/common_audio/vad; make ROOT=$(ROOT)
	cd webrtc/common_audio/resampler; make ROOT=$(ROOT)
	cd webrtc/modules/audio_processing/utility; make ROOT=$(ROOT)
	cd webrtc/modules/audio_processing/aec; make ROOT=$(ROOT)
	cd webrtc/modules/audio_processing/agc; make ROOT=$(ROOT)
	cd webrtc/modules/audio_device; make ROOT=$(ROOT)

a:


.PHONY: test

test:
	cd test; make ROOT=$(ROOT)

clean:
	rm -f dist/lib/*
