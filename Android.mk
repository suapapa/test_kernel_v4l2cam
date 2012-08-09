LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES += v4l2_cam.c

LOCAL_SHARED_LIBRARIES += libutils libui liblog libbinder libdl libcutils

LOCAL_SHARED_LIBRARIES += libjpeg
LOCAL_C_INCLUDES += external/jpeg

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := v4l2_cam
include $(BUILD_EXECUTABLE)
