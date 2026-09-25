#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/lava/LXX516

# Virtual A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

# Boot control HAL (HIDL 1.2 for Unisoc UMS9621)
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    android.hardware.boot@1.1 \
    android.hardware.boot@1.2 \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-service

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload \
    checkpoint_gc

PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# Building vendor_boot
PRODUCT_BUILD_SUPER_PARTITION := false

# Prebuilt DTB copy
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/prebuilt/dtb.img:dtb.img

# API Level (fox_14.1 tree target 34)
PRODUCT_SHIPPING_API_LEVEL := 34
PRODUCT_TARGET_VNDK_VERSION := 34
BOARD_SHIPPING_API_LEVEL := 34
SHIPPING_API_LEVEL := 34

# Recovery filesystem tools
PRODUCT_PACKAGES += \
    e2fsck.vendor_ramdisk \
    fsck.f2fs.vendor_ramdisk \
    resize2fs.vendor_ramdisk \
    tune2fs.vendor_ramdisk

# Fastboot & FastbootD
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0 \
    android.hardware.fastboot@1.1 \
    fastbootd

# Vold
PRODUCT_PACKAGES += \
    vold.recovery \
    vold_prepare_subdirs.recovery