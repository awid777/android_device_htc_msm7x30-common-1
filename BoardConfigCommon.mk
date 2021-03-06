# Copyright (C) 2011 The CyanogenMod Project
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

# inherit from common msm7x30 Recovery
-include device/htc/7x30-recovery/BoardConfigCommon.mk

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_NEON := true

TARGET_EXTRA_CFLAGS += $(call cc-option,-march=armv7-a -mtune=cortex-a9)
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mcpu=cortex-a9 -mtune=cortex-a9 -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mcpu=cortex-a9 -mtune=cortex-a9 -mfloat-abi=softfp
TARGET_USE_SPARROW_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH :=64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

TARGET_SPECIFIC_HEADER_PATH := device/htc/msm7x30-common/include

#QCom Display
BOARD_EGL_CFG := device/htc/msm7x30-common/egl.cfg
BOARD_USES_ADRENO_200 := true
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_SF_BYPASS := true
TARGET_HAVE_BYPASS := true
TARGET_USES_OVERLAY := true
TARGET_QCOM_HDMI_OUT := false
TARGET_GRALLOC_USES_ASHMEM := true
TARGET_USES_GENLOCK := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true

# Legacy Compatibility
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB -DQCOM_NO_SECURE_PLAYBACK
BOARD_NEEDS_MEMORYHEAPPMEM := true

# RIL
BOARD_USES_LEGACY_RIL := true

# QCom Hardware
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_USE_QCOM_PMEM := true
TARGET_USES_PMEM := true
TARGET_PROVIDES_LIBLIGHTS := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_VENDOR_QCOM_AMSS_VERSION := 1200
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240

# Audio
BOARD_PREBUILT_LIBAUDIO := false

TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# WebKit
TARGET_FORCE_CPU_UPLOAD := true
ENABLE_WEBGL := true
