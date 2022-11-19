#
# Copyright (C) 2020-2021 The LineageOS Project
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
#

# Inherit proprietary files
$(call inherit-product, vendor/samsung/gta4xlwifi/gta4xlwifi-vendor.mk)

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

PRODUCT_CHARACTERISTICS := tablet

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH) \
    hardware/google/interfaces \
    hardware/google/pixel \
    hardware/samsung/aidl/power-libperfmgr
    
# Overlays
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay
PRODUCT_ENFORCE_RRO_TARGETS += *

# Turn on all adbd
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.service.adb.enable=1 \

PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.usb.config=mtp,adb \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.debuggable=1
    
    include $(PLATFORM_PATH)/platform/*.mk
