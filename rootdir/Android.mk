LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := fstab.$(TARGET_DEVICE)
LOCAL_SRC_FILES := vendor/etc/fstab.nile
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := fstab.$(TARGET_DEVICE)
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := init.nile
LOCAL_SRC_FILES := vendor/etc/init/init.nile.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := init.nile
LOCAL_MODULE_SUFFIX := .rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := init.nile.pwr
LOCAL_SRC_FILES := vendor/etc/init/init.nile.pwr.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := init.nile.pwr
LOCAL_MODULE_SUFFIX := .rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ueventd
LOCAL_SRC_FILES := vendor/ueventd.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := ueventd
LOCAL_MODULE_SUFFIX := .rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := sensors_settings
LOCAL_SRC_FILES := vendor/etc/sensors/sensors_settings
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := sensors_settings
LOCAL_MODULE_SUFFIX :=
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc/sensors
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := sns_reg_config
LOCAL_SRC_FILES := vendor/etc/sensors/sns_reg_config
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := sns_reg_config
LOCAL_MODULE_SUFFIX :=
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc/sensors
include $(BUILD_PREBUILT)

ifeq ($(USE_SENSOR_MULTI_HAL),true)
include $(CLEAR_VARS)
LOCAL_MODULE := hals.conf
LOCAL_SRC_FILES := vendor/etc/sensors/hals.conf
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := hals.conf
LOCAL_MODULE_SUFFIX :=
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc/sensors
include $(BUILD_PREBUILT)
endif
