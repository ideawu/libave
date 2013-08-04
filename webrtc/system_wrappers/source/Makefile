include $(ROOT)/build.mk

OUT_LIB := $(LIBS_DIR)/libwebrtc_spl.a
LOCAL_SRC_FILES := \
    map.cc \
    sort.cc \
    aligned_malloc.cc \
    condition_variable.cc \
    cpu_features.cc \
    cpu_info.cc \
    critical_section.cc \
    event.cc \
    event_tracer.cc \
    file_impl.cc \
    list_no_stl.cc \
    rw_lock.cc \
    thread.cc \
    trace_impl.cc \
    condition_variable_posix.cc \
    critical_section_posix.cc \
    event_posix.cc \
    sleep.cc \
    thread_posix.cc \
    tick_util.cc \
    trace_posix.cc \
    rw_lock_posix.cc 


all:
	g++ -c $(LOCAL_SRC_FILES) $(CFLAGS)
	ar -cru $(OUT_LIB) *.o
