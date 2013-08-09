BASE_DIR := /Users/wuzuyang/Works/libave
DIST_LIB_DIR := $(BASE_DIR)/dist/lib
DIST_OBJ_DIR := $(BASE_DIR)/dist/obj
DIST_INC_DIR := $(BASE_DIR)/dist/include/ave

TARGET_ARCH=x86
OS=mac
C=clang
CC=clang++

CFLAGS :=
CFLAGS += -Wall -Wno-sign-compare -g
CFLAGS += -I $(BASE_DIR)
CFLAGS += -D WEBRTC_MAC -D WEBRTC_CLOCK_TYPE_REALTIME -DWEBRTC_NS_FIXED