$(call inherit-product, device/lge/h870/full_h870.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/aosp/common.mk)

TARGET_BOOT_ANIMATION_RES := 1080

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_NAME := aosp_h870

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="lucye" \
    PRODUCT_DEVICE="lucye" \
    PRODUCT_NAME="lucye_global_com" \
    PRIVATE_BUILD_DESC="lucye_global_com-user 7.0 NRD90U 171732341982c release-keys"

BUILD_FINGERPRINT := "lge/lucye_global_com/lucye:7.0/NRD90U/171732341982c:user/release-keys"
