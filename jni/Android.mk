# Jopnal Android sample Android.mk

LOCAL_PATH := $(call my-dir)


# OpenAL
include $(CLEAR_VARS)

LOCAL_MODULE := openal
LOCAL_SRC_FILES := ../ext/lib/libopenal.so

include $(PREBUILT_SHARED_LIBRARY)


# Jopnal
include $(CLEAR_VARS)

LOCAL_MODULE := jopnal
LOCAL_SRC_FILES := ../ext/lib/libjopnal.so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)../ext/include
LOCAL_EXPORT_LDLIBS := -lEGL -llog -landroid
LOCAL_SHARED_LIBRARIES := openal

include $(PREBUILT_SHARED_LIBRARY)


# Jopnal main
include $(CLEAR_VARS)

LOCAL_MODULE := jopnal-main
LOCAL_SRC_FILES := ../ext/lib/libjopnal-main.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)../ext/include
LOCAL_SHARED_LIBRARIES := jopnal

include $(PREBUILT_STATIC_LIBRARY)


# Jopnal activity
include $(CLEAR_VARS)

LOCAL_MODULE := jopnal-activity
LOCAL_SRC_FILES := ../ext/lib/libjopnal-activity.so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)../ext/include

include $(PREBUILT_SHARED_LIBRARY)


# Example
include $(CLEAR_VARS)

LOCAL_MODULE    := jopnal-example
LOCAL_SRC_FILES := main.cpp

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../ext/include
LOCAL_SHARED_LIBRARIES := jopnal
LOCAL_WHOLE_STATIC_LIBRARIES := jopnal-main

include $(BUILD_SHARED_LIBRARY)