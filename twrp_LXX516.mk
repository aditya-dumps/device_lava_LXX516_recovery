#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from LXX516 device
$(call inherit-product, device/lava/LXX516/device.mk)

# Configure emulated_storage.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Device-specific OrangeFox configuration
$(call inherit-product, device/lava/LXX516/fox_LXX516.mk)

PRODUCT_DEVICE := LXX516
PRODUCT_NAME := twrp_LXX516
PRODUCT_BRAND := LAVA
PRODUCT_MODEL := LAVA LXX516
PRODUCT_MANUFACTURER := LAVA

PRODUCT_GMS_CLIENTID_BASE := android-lava

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="LXX516-user 15 AP3A.240905.015.A2 150 release-keys"

BUILD_FINGERPRINT := LAVA/LXX516/LXX516:15/AP3A.240905.015.A2/150:user/release-keys
