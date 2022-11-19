### INIT
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/init/fstab.exynos9611:$(TARGET_COPY_OUT_RAMDISK)/fstab.exynos9611 \
    $(DEVICE_PATH)/configs/init/fstab.exynos9611:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.exynos9611 \
    $(DEVICE_PATH)/configs/init/init.exynos9611.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.exynos9611.rc \
    $(DEVICE_PATH)/configs/init/init.exynos9611.usb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.exynos9611.usb.rc \
    $(DEVICE_PATH)/configs/init/init.recovery.exynos9611.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.exynos9611.rc \
    $(DEVICE_PATH)/configs/init/init.samsung.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.samsung.rc \
    $(DEVICE_PATH)/configs/init/ueventd.rc:$(TARGET_COPY_OUT_VENDOR)/etc/ueventd.rc
