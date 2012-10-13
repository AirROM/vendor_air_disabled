
$(call inherit-product, device/lge/su640/su640.mk)

# Inherit common product files.
$(call inherit-product, vendor/air/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/air/configs/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := air_su640
PRODUCT_DEVICE := su640
PRODUCT_MODEL := LG-SU640

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lge_iproj BUILD_FINGERPRINT=LGE/i_skt/i_skt:4.0.4/IMM76D/LG-SU640-V20d.1c14dd350a:user/release-keys PRIVATE_BUILD_DESC="i_skt-user 4.0.4 IMM76D LG-SU640-V20d.1c14dd350a release-keys"

PRODUCT_COPY_FILES += \
    vendor/air/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip
