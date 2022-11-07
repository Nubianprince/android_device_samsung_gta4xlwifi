# Inherit common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_mobile.mk)

PRODUCT_SIZE := full

# Include {Lato,Rubik} fonts
$(call inherit-product-if-exists, external/google-fonts/lato/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/rubik/fonts.mk)

# Required packages
PRODUCT_PACKAGES += \
    androidx.window.extensions \
    LatinIME

# Include Lineage LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/lineage/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/lineage/overlay/dictionaries

# Recorder
PRODUCT_PACKAGES += \
    Recorder

# Customization overlays
PRODUCT_PACKAGES += \
   FontAuthenticOverlay \
   FontTwCenMtOverlay \
	 FontSulphurPointOverlay \
	 FontUrbanistOverlay \
	 FontNK57Overlay \
	 FontHarmoniaSansOverlay

# Register fonts
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/samsung/gta4xlwifi/fonts/prebuilt,$(TARGET_COPY_OUT_PRODUCT)/fonts) \
    device/samsung/gta4xlwifi/fonts/prebuilt/etc/fonts_customization.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml
