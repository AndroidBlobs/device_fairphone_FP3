# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from FP3 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := fairphone
PRODUCT_DEVICE := FP3
PRODUCT_MANUFACTURER := fairphone
PRODUCT_NAME := lineage_FP3
PRODUCT_MODEL := FP3

PRODUCT_GMS_CLIENTID_BASE := android-fairphone
TARGET_VENDOR := fairphone
TARGET_VENDOR_PRODUCT_NAME := FP3
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="FP3-user 9 8901.2.A.0110.20200109 01092024 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Fairphone/FP3/FP3:9/8901.2.A.0110.20200109/01092024:user/release-keys
