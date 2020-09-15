# Release name
PRODUCT_RELEASE_NAME := x930

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/pb/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := Cherry_Mobile
PRODUCT_DEVICE := x930
PRODUCT_MANUFACTURER := Cherry_Mobile
PRODUCT_MODEL := Flare_S8
PRODUCT_NAME := omni_x930

# enable stock zip packages flash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.secure=1 \
    ro.adb.secure=0 \
    ro.allow.mock.location=0
