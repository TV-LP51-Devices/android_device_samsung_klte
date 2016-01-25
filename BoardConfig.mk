# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from common klte
-include device/samsung/klte-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := kltexx,kltelra,kltetmo,kltecan,klteatt,klteub,klteacg,klte,kltekor,klteskt,kltektt

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := msm8974pro_sec_klte_eur_defconfig

# Kernel Toolchain
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-4.9-uber/bin
KERNEL_TOOLCHAIN_PREFIX := arm-eabi-

# Rom Toolchain
TARGET_GCC_VERSION_EXP := 4.9-uber

# Optimizations
CLANG_O3 := true
STRICT_ALIASING := false
KRAIT_TUNINGS := true
GRAPHITE_OPTS := false
ENABLE_GCCONLY := true

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := device/samsung/klte/init/init_klte.cpp
TARGET_UNIFIED_DEVICE := true

# NFC
BOARD_NFC_CHIPSET := pn547

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 13631488
BOARD_CACHEIMAGE_PARTITION_SIZE := 524288000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2548039680
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12442369024 # 12442385408 - 16384

# Default.prop overrides to get adb working at boot   
ADDITIONAL_DEFAULT_PROPERTIES += \
		ro.secure=0 \
		ro.adb.secure=0 \

# inherit from the proprietary version
-include vendor/samsung/klte/BoardConfigVendor.mk
