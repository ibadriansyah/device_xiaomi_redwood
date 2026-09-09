#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/redwood

# Inherit from sm8350-common
include device/xiaomi/sm8350-common/BoardConfigCommon.mk

# Board
TARGET_BOOTLOADER_BOARD_NAME := redwood

# Boot Image
BOARD_BOOTIMAGE_PARTITION_SIZE := 201326592

# Recovery / Boot Image Configuration
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_NO_RECOVERY := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/xiaomi/sm7325
TARGET_KERNEL_CONFIG := vendor/xiaomi-qgki_defconfig vendor/redwood.config

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 25165824

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Include proprietary files
include vendor/xiaomi/redwood/BoardConfigVendor.mk
