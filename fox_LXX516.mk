#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2025 The OrangeFox Recovery Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#

# make file for LXX516
# OF variable file

# Maintainer
OF_MAINTAINER := 🔥IQ_HARRY_07🔥

# Skip Decryption for initial bringup (FBEv2 on Android 15)
OF_SKIP_FBE_DECRYPTION := 1

# Screen settings (verified from device: 720x1600, density 320, top cutout 66px)
OF_SCREEN_H := 1600
OF_STATUS_H := 70
OF_STATUS_INDENT_LEFT := 48
OF_STATUS_INDENT_RIGHT := 48
OF_ALLOW_DISABLE_NAVBAR := 0
OF_CLOCK_POS := 1
OF_OPTIONS_LIST_NUM := 9

# Display & Backlight
OF_BRIGHTNESS_PATH := "/sys/class/backlight/sprd_backlight/brightness"
OF_MAX_BRIGHTNESS := 255

# No Dedicated Recovery partition (recovery in vendor_boot)
OF_AB_DEVICE_WITH_RECOVERY_PARTITION := 0

# automatically wipe /metadata after data format
OF_WIPE_METADATA_AFTER_DATAFORMAT := 1

# lz4 compression
OF_USE_LZ4_COMPRESSION := 1

# Called just before formatting /data; useful for devices with dynamic partitions
OF_USE_DMCTL := 1
