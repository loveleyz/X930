# Release name
PRODUCT_RELEASE_NAME := X930

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/treble_common_64.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/runtime_libart.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := Cherry_Mobile
PRODUCT_DEVICE := Flare_S8
PRODUCT_MANUFACTURER := Cherry_Mobile
PRODUCT_MODEL := Flare_S8
PRODUCT_NAME := omni_Flare_S8

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Cherry_Mobile/Flare_S8/X930:9/PPR1.180610.011/0710141239:user/release-keys" \
    PRIVATE_BUILD_DESC="Flare_S8-user 9 PPR1.180610.011 1559618636 release-keys"

# enable stock zip packages flash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.treble.enabled=true \
    persist.sys.usb.config=mtp \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    ro.secure=1 \
    ro.adb.secure=0 \
    ro.debuggable=1 \
    ro.allow.mock.location=0


