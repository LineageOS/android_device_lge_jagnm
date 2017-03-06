# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/lge/jagnm/device_jagnm.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

# Release name
PRODUCT_RELEASE_NAME := LG G3s
PRODUCT_NAME := lineage_jagnm
PRODUCT_MODEL := LG-D722
PRODUCT_DEVICE := jagnm
PRODUCT_MANUFACTURER := LGE
PRODUCT_BRAND := lge

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="jagnm" \
    PRODUCT_NAME="jagnm_global_com" \
    BUILD_FINGERPRINT="lge/jagnm_global_com/jagnm:4.4.2/KOT49I.A1415241157/1415241157:user/release-keys" \
    PRIVATE_BUILD_DESC="jagnm_global_com-user 4.4.2 KOT49I.A1415241157 1415241157 release-keys"
