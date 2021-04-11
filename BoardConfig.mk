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

BUILD_TOP := $(shell pwd)

DEVICE_PATH := device/samsung/gta4xlwifi

# ALLOW VENDOR FILE OVERRIDE
BUILD_BROKEN_DUP_RULES := true

# BOARD
TARGET_BOARD_PLATFORM := universal9611
TARGET_SLSI_VARIANT := bsp
TARGET_SOC := exynos9611
TARGET_BOOTLOADER_BOARD_NAME := exynos9611
TARGET_BOARD_PLATFORM_GPU := mali-g72
PRODUCT_PLATFORM := exynos9611

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
TARGET_KERNEL_SOURCE = kernel/samsung/gta4xl_10
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CONFIG := exynos9611-gta4xlwifi_defconfig

BOARD_CUSTOM_BOOTIMG         := true
BOARD_CUSTOM_BOOTIMG_MK      := $(DEVICE_PATH)/mkbootimg.mk
BOARD_KERNEL_BASE            := 0x10000000
BOARD_KERNEL_PAGESIZE        := 2048
BOARD_KERNEL_IMAGE_NAME      := Image
BOARD_MKBOOTIMG_ARGS := --dtb_offset 0x00000000 --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --header_version 2 --board SRPSL20A002KU

# PARTITIONS
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_BOOTIMAGE_PARTITION_SIZE := 61865984
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 71106560
BOARD_DTBOIMG_PARTITION_SIZE := 8388608

# USERDATA
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

include $(DEVICE_PATH)/twrp.mk
