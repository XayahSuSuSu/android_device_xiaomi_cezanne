#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from cezanne device
$(call inherit-product, device/xiaomi/cezanne/device.mk)

# Inherit some common Arrow stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_cezanne
PRODUCT_DEVICE := cezanne
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2006J10C
PRODUCT_MANUFACTURER := Xiaomi
DEVICE_MAINTAINER := Xayah

PRODUCT_CHARACTERISTICS := nosdcard

BUILD_FINGERPRINT := "Redmi/cezanne/cezanne:11/RKQ1.200826.002/V12.2.1.0.RJKCNXM:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
