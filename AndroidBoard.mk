LOCAL_PATH := $(call my-dir)

ifneq ($(TARGET_DEVICE),x930)
include $(call all-makefiles-under,$(LOCAL_PATH))
include $(CLEAR_VARS)
endif
