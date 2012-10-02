$(call inherit-product, vendor/air/configs/common.mk)

PRODUCT_PACKAGES += \
    NovaLauncher

# Inherit drm blobs
-include vendor/air/configs/common_drm_phone.mk

# BT config
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf
