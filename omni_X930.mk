$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_DEVICE := X930
PRODUCT_NAME := omni_X930
PRODUCT_BRAND := Cherry_Mobile
PRODUCT_MODEL := Flare_S8
PRODUCT_MANUFACTURER := Cherry_Mobile

# ADB Fix
PRODUCT_PROPERTY_OVERRIDES += \
    sys.usb.ffs.aio_compat=true

