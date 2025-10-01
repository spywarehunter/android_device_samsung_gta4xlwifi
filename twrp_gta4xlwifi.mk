# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Include any options that can't be included in BoardConfig.mk
$(call inherit-product, device/samsung/gta4xlwifi/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := twrp_gta4xlwifi
PRODUCT_DEVICE := gta4xlwifi
PRODUCT_MODEL := SM-P610
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
