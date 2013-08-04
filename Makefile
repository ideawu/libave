CFLAGS = -I . -I ./webrtc
AEC_DIR = webrtc/modules/audio_processing/aec
ROOT = $(shell pwd)

all:
	cd webrtc/system_wrappers/source; make ROOT=$(ROOT)
	cd webrtc/common_audio/signal_processing; make ROOT=$(ROOT)
	cd webrtc/common_audio/resampler; make ROOT=$(ROOT)
	cd webrtc/modules/audio_processing/utility; make ROOT=$(ROOT)
	cd webrtc/modules/audio_processing/aec; make ROOT=$(ROOT)

a:


test:
	#g++ test.cpp -o test.exe $(CFLAGS) libs/*.a
	#g++ pa_devs.c -o pa.exe -I portaudio/include/ -L portaudio/lib -lportaudio
	g++ a.c -o a.exe -I portaudio/include/ -L portaudio/lib -lportaudio
	#g++ paex_record.c -o pa.exe -I portaudio/include/ -L portaudio/lib -lportaudio
	# export DYLD_LIBRARY_PATH="./portaudio/lib"