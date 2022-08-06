LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), WP5_Pro)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
