#
# Copyright (C) 2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ALLOW_MISSING_DEPENDENCIES := true
#TARGET_SUPPORTS_64_BIT_APPS := false

BUILD_TOP := $(shell pwd)

DEVICE_PATH := device/samsung/gta4xlwifi

BOARD_VENDOR := samsung

# BOARD
TARGET_BOARD_PLATFORM := universal9611
TARGET_SLSI_VARIANT := bsp
TARGET_SOC := exynos9611
TARGET_BOOTLOADER_BOARD_NAME := exynos9611
TARGET_BOARD_PLATFORM_GPU := mali-g72
PLATFORM_SECURITY_PATCH := 2099-12-31

TARGET_OTA_ASSER_DEVICE := gta4xlwifi,gta4xlwifixx

TARGET_NO_BOOTLOADER := true

# PROCESSOR
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# KERNEL
BOARD_KERNEL_IMAGE_NAME :=Image
BOARD_BOOTIMG_HEADER_VERSION := 2

BOARD_CUSTOM_BOOTIMG         := true
BOARD_CUSTOM_BOOTIMG_MK      := $(DEVICE_PATH)/mkbootimg.mk
BOARD_DTB_OFFSET := 0x00000000
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE +=  androidboot.vbmeta.avb_version=1.0
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_TAGS_OFFSET := 0x00000100
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_KERNEL_SEPARATED_DTBO := true

TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/$(BOARD_KERNEL_IMAGE_NAME)
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/recovery_dtbo

BOARD_MKBOOTIMG_ARGS := --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)

# SYSTEM
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
AB_OTA_UPDATER := false

# VENDOR
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# ODM
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_ODM := odm

# PRODUCT
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_PRODUCT := product

# CACHE
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# USERDATA
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# DISPLAY
TARGET_SCREEN_DENSITY := 240

# PARTITIONS
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_BOOTIMAGE_PARTITION_SIZE := 61865984
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 71106560
BOARD_DTBOIMG_PARTITION_SIZE := 8388608

# Dynamic Partitions
BOARD_SUPER_PARTITION_SIZE := 6585057280
BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 6580862976
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := \
    system \
    vendor \
    product \
    odm

# ALLOW VENDOR FILE OVERRIDE
BUILD_BROKEN_DUP_RULES := true

# RECOVERY
BOARD_HAS_DOWNLOAD_MODE := true
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab


# TWRP
TW_CUSTOM_THEME := $(DEVICE_PATH)/theme/portrait_hdpi
TW_INCLUDE_CRYPTO := false
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
RECOVERY_SDCARD_ON_DATA := true
TW_NO_LEGACY_PROPS := true
TW_NO_HAPTICS := true
TW_DEVICE_VERSION := NP

# Debug-tools
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

# init.recovery.usb.rc
TW_EXCLUDE_DEFAULT_USB_INIT := true

TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

