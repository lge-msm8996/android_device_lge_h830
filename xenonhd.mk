$(call inherit-product, device/lge/h830/full_h830.mk)

# Inherit some common XenonHD stuff. 
$(call inherit-product, vendor/xenonhd/config/common_full_phone.mk)

# Overlays (inherit after vendor/xenonhd to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := h830
PRODUCT_NAME := xenonhd_h830
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-H830
PRODUCT_MANUFACTURER := LGE

#Maintainer
PRODUCT_PROPERTY_OVERRIDES += ro.xenonhd.maintainer=SickkSide13

# Root options (root apps = substratum, adaway, kernel adiutor)
WITH_SUPERSU := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g5" \
    PRODUCT_NAME="h1_tmo_us" \
   BUILD_FINGERPRINT="lge/h1_tmo_us/h1:7.0/NRD90U/1631213003394:user/release-keys" \
    PRIVATE_BUILD_DESC="h1_tmo_us-user 7.0 NRD90U 1631213003394 release-keys"
