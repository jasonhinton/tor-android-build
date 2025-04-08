LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := tor
LOCAL_SRC_FILES := \
    src/app/main.c \
    src/core/or/*.c \
    src/lib/*.c \
    src/trunnel/*.c

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/src \
    $(LOCAL_PATH)/src/core/or \
    $(LOCAL_PATH)/src/lib \
    $(LOCAL_PATH)/src/trunnel

LOCAL_CFLAGS += -DANDROID -Wall -O2 -fPIC
LOCAL_LDLIBS := -llog

include $(BUILD_SHARED_LIBRARY)
