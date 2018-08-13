QCOM_MEDIA_ROOT := $(call my-dir)

#Compile these for all QCOM targets.
include $(QCOM_MEDIA_ROOT)/mm-core/Android.mk
include $(QCOM_MEDIA_ROOT)/libstagefrighthw/Android.mk

ifneq ($(TARGET_SUPPORTS_WEARABLES),true)
include $(QCOM_MEDIA_ROOT)/mm-video-v4l2/Android.mk
include $(QCOM_MEDIA_ROOT)/libc2dcolorconvert/Android.mk
endif
