#
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from device
$(call inherit-product, device/oukitel/WP5_Pro/device.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := WP5_Pro
PRODUCT_NAME := twrp_WP5_Pro_EEA_R
PRODUCT_BRAND := OUKITEL
PRODUCT_MODEL := WP5 Pro
PRODUCT_MANUFACTURER := OUKITEL
PRODUCT_RELEASE_NAME := OUKITEL WP5 Pro

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=WP5_Pro \
    PRODUCT_NAME=WP5_Pro_EEA_R \
    PRIVATE_BUILD_DESC="full_d937d-user 11 RP1A.200720.011 20210705 release-keys"

BUILD_FINGERPRINT := OUKITEL/WP5_Pro_EEA_R/WP5_Pro:11/RP1A.200720.011/20210705:user/release-keys

