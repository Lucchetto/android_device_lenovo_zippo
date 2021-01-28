
# Copyright (C) 2019-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
-include device/lenovo/sm8150-common/BoardConfigCommon.mk

BOARD_VENDOR := lenovo

DEVICE_PATH := device/lenovo/zippo

# Assert
TARGET_OTA_ASSERT_DEVICE := zippo

# Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
  TARGET_KERNEL_CONFIG := lineage_zippo_defconfig
  TARGET_KERNEL_CLANG_COMPILE := true
  TARGET_KERNEL_SOURCE := kernel/lenovo/sm8150
endif

# Inherit from the proprietary version
-include vendor/lenovo/zippo/BoardConfigVendor.mk
