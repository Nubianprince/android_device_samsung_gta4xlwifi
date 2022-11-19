### AUDIO
# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio.effect@7.0-impl:32 \
    android.hardware.audio@7.1-impl:32 \
    android.hardware.audio.service \
    android.hardware.bluetooth.audio-impl \
    audio.bluetooth.default \
    audio.r_submix.default \
    audio.usb.default \
    libaudioroute \
    libtinyalsa \
    libtinycompress

PRODUCT_PACKAGES += \
    SamsungDAP

TARGET_EXCLUDES_AUDIOFX := true

### BLUETOOTH
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl:64 \
    android.hardware.bluetooth@1.0-service \
    libbt-vendor:64

### CAMERA
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.5-service_64 \
    libsensorndkbridge

# Charger
PRODUCT_PACKAGES += \
    charger_res_images_vendor

# ConfigStore
PRODUCT_PACKAGES += \
    disable_configstore

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl:64 \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.2-service \
    android.hardware.graphics.mapper@2.0-impl-2.1

PRODUCT_PACKAGES += \
    libdrm.vendor:64

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.4.vendor:32 \
    android.hardware.drm-service.clearkey

# FastCharge
PRODUCT_PACKAGES += \
    vendor.lineage.fastcharge@1.0-service.samsung

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl:64 \
    android.hardware.gatekeeper@1.0-service

# GNSS
PRODUCT_PACKAGES += \
    android.hardware.gnss@2.1.vendor:64

# Graphics
# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := 400dpi
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

# Health
PRODUCT_PACKAGES += \
    android.hardware.health-service.samsung \
    android.hardware.health-service.samsung-recovery

# HIDL
PRODUCT_PACKAGES += \
   libhidltransport \
   libhidltransport.vendor \
   libhwbinder \
   libhwbinder.vendor

# Kernel
PRODUCT_SET_DEBUGFS_RESTRICTIONS := true

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.0-service.samsung \
    libkeymaster4_1support.vendor:64

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light-service.samsung

# Memtrack
PRODUCT_PACKAGES += \
    android.hardware.memtrack-service.samsung-mali

# OMX
PRODUCT_PACKAGES += \
    libepicoperator

# Power
PRODUCT_PACKAGES += \
    android.hardware.power-service.samsung-libperfmgr

# RIL
PRODUCT_PACKAGES += \
    android.hardware.radio@1.4.vendor:64 \
    android.hardware.radio.config@1.2.vendor:64 \
    android.hardware.radio.deprecated@1.0.vendor:64

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.contexthub@1.0.vendor:64 \
    android.hardware.sensors-service.samsung-multihal

# Shims
PRODUCT_PACKAGES += \
    libshim_sensorndkbridge

# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@2.0-service.samsung


# Touch HAL
PRODUCT_PACKAGES += \
    vendor.lineage.touch@1.0-service.samsung

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb-service.samsung

# VNDK
PRODUCT_PACKAGES += \
    libutils-v32

# WiFi
PRODUCT_PACKAGES += \
    WifiOverlay \
    android.hardware.wifi@1.0-service \
    hostapd \
    wpa_supplicant

PRODUCT_CFI_INCLUDE_PATHS += hardware/samsung_slsi/scsc_wifibt/wpa_supplicant_lib
