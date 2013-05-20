# Copyright (C) 2009 The Android Open Source Project
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
#
# CPU
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

#Platform
TARGET_BOARD_PLATFORM := msm8960

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8960

#kernel 3.0
#BOARD_KERNEL_BASE := 0x819BD004
#BOARD_KERNEL_PAGESIZE := 2048
#BOARD_KERNEL_CMDLINE := console=NULL,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 maxcpus=2 loglevel=0
#BOARD_FORCE_RAMDISK_ADDRESS := 0x816C2000

# Kernel 3.4
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := console=NULL,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 loglevel=0 vmalloc=0x12c00000
BOARD_FORCE_RAMDISK_ADDRESS := 0x82200000

# Kernel 212
TARGET_PREBUILT_RECOVERY_KERNEL := device/pantech/ef49k/kernel212
TARGET_PREBUILT_KERNEL := device/pantech/ef49k/kernel212
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel212 \

# Kernel 210
#TARGET_PREBUILT_RECOVERY_KERNEL := device/pantech/ef49k/kernel210
#TARGET_PREBUILT_KERNEL := device/pantech/ef49k/kernel210
#LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#PRODUCT_COPY_FILES += \
#    $(LOCAL_KERNEL):kernel210 \

# Kernel 158
#TARGET_PREBUILT_RECOVERY_KERNEL := device/pantech/ef49k/kernel158
#TARGET_PREBUILT_KERNEL := device/pantech/ef49k/kernel158
#LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#PRODUCT_COPY_FILES += \
#    $(LOCAL_KERNEL):kernel158 \

BOARD_EGL_CFG := device/pantech/ef49k/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
TARGET_USES_OVERLAY := true
TARGET_USES_SF_BYPASS := true
TARGET_USES_C2D_COMPOSITON := true

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_HAS_NO_SELECT_BUTTON := true

#TWRP config
DEVICE_RESOLUTION := 720x1280
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_HAS_NO_REAL_SDCARD := true
#TW_INCLUDE_CRYPTO := true
TW_INCLUDE_JB_CRYPTO := true
TW_FLASH_FROM_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
SP1_NAME := "modem"
SP1_BACKUP_METHOD := image
SP1_MOUNTABLE := 0
SP2_NAME := "rawdata"
SP2_BACKUP_METHOD := image
SP2_MOUNTABLE := 0