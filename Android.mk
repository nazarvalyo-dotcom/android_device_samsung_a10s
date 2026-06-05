LOCAL_PATH := device/samsung/a10s

ifneq ($(filter a10s,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif