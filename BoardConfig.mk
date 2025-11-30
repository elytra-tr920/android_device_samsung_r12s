#
# Copyright (C) 2014 The Android Open Source Project
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

DEVICE_PATH := device/samsung/r12s

# DTS
BOARD_DTBO_CFG := $(DEVICE_PATH)/dtbo.cfg

# Display
TARGET_SCREEN_DENSITY := 418

# Modules
BOARD_RECOVERY_RAMDISK_KERNEL_MODULES_LOAD := \
    sec_debug_ssld_info.ko \
    kiwi_v2.ko \
    cfg80211.ko

# Copy vendor modules
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/proprietary/vendor/lib/modules/modules.load:vendor/lib/modules/modules.load \
    $(DEVICE_PATH)/proprietary/vendor/lib/modules/sec_debug_ssld_info.ko:vendor/lib/modules/sec_debug_ssld_info.ko \
    $(DEVICE_PATH)/proprietary/vendor/lib/modules/kiwi_v2.ko:vendor/lib/modules/kiwi_v2.ko \
    $(DEVICE_PATH)/proprietary/vendor/lib/modules/cfg80211.ko:vendor/lib/modules/cfg80211.ko

# Inherit from common
include device/samsung/s5e9945/BoardConfigCommon.mk
