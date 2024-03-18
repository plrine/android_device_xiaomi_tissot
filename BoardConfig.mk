#
# Copyright (C) 2017-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common msm8953-common
include device/xiaomi/msm8953-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/tissot

# Display
TARGET_SCREEN_DENSITY := 440

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG += xiaomi/tissot.config

# Partitions
BOARD_USERDATAIMAGE_PARTITION_SIZE := 55087422464 # 25765059584 - 16384

# Power
TARGET_TAP_TO_WAKE_NODE := "/proc/touchpanel/enable_dt2w"

# Security Patch Level
VENDOR_SECURITY_PATCH := 2020-05-05

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit the proprietary files
include vendor/xiaomi/tissot/BoardConfigVendor.mk
