#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 The TWRP Open Source Project
# Copyright (C) 2026 TeamOrangeFox
#

DEVICE_PATH := device/lava/LXX516

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a75

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Board Platform
TARGET_BOARD_PLATFORM := ums9620
TARGET_BOOTLOADER_BOARD_NAME := ums9621_1h10

# Kernel & Boot
BOARD_KERNEL_PAGESIZE := 4096
BOARD_BOOT_HEADER_VERSION := 4
BOARD_MKBOOTIMG_ARGS := --header_version $(BOARD_BOOT_HEADER_VERSION)

BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/prebuilt
BOARD_INCLUDE_DTB_IN_BOOTIMG := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_INIT_BOOT_IMAGE_PARTITION_SIZE := 8388608
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 67108864

# Dynamic Partitions
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_SUPER_PARTITION_GROUPS := sprd_dynamic_partitions
BOARD_SPRD_DYNAMIC_PARTITIONS_SIZE := 9122611200
BOARD_SPRD_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext vendor product

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab
BOARD_HAS_NO_REAL_SDCARD := true

# Kernel Command Line from Stock Boot
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8 loglevel=7 initcall_debug=0 printk.devkmsg=on
BOARD_KERNEL_CMDLINE += androidboot.hardware=ums9621_1h10

# Display & Graphics
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2400
OF_SCREEN_H := 2400
OF_STATUS_H := 100
OF_STATUS_INDENT_LEFT := 48
OF_STATUS_INDENT_RIGHT := 48
TW_THEME := portrait_hdpi

# Touchscreen Modules
TW_LOAD_VENDOR_MODULES := "focaltech_ft8756_spi_ts.ko focaltech_ft3680_spi_ts.ko synaptics_td4320_spi_ts.ko chipone_9916_ts.ko galaxycore_gc7272_spi_ts.ko"
