#
# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Specific overlay
DEVICE_PACKAGE_OVERLAYS += device/lge/jagnm/overlay

# Configs
PRODUCT_COPY_FILES += \
    device/lge/jagnm/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/lge/jagnm/prebuilt/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/lge/jagnm/prebuilt/etc/wifi/bcmdhd.cal:system/etc/wifi/bcmdhd.cal \
    device/lge/jagnm/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Common specific options
BOARD_HAS_QCOM_WCNSS := false
BOARD_HAS_NFC := false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=10 \
    ro.sf.lcd_density=320 \
    ro.config.vc_call_vol_steps=6

PRODUCT_PACKAGES += hwaddrs
BOARD_HAS_NFC := true

# FM
PRODUCT_PACKAGES += \
    FMRadio \
    brcm-uim-sysfs \
    libfmjni

# Inherit from msm8226-common
$(call inherit-product, device/lge/msm8226-common/msm8226.mk)
$(call inherit-product, vendor/lge/jagnm/jagnm-vendor.mk)

