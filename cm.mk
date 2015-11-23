# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

# Release name
PRODUCT_RELEASE_NAME := LG G3s
PRODUCT_NAME := cm_jagnm
PRODUCT_MANUFACTURER := lge
PRODUCT_MODEL := LG-D722

$(call inherit-product, device/lge/jagnm/full_jagnm.mk)
