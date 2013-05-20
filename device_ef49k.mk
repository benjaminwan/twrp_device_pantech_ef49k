#
# Copyright 2012 The Android Open Source Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# common msm8960 configs
#$(call inherit-product, device/pantech/msm8960-common/msm8960.mk)

# Boot ramdisk setup
#PRODUCT_COPY_FILES += \
#    device/pantech/ef49k/ramdisk/init.rc:root/init.rc \
#    device/pantech/ef49k/ramdisk/init.qcom.rc:root/init.qcom.rc \
#    device/pantech/ef49k/ramdisk/init.qcom.sh:root/init.qcom.sh \
#    device/pantech/ef49k/ramdisk/init.target.rc:root/init.target.rc \
#    device/pantech/ef49k/ramdisk/init.trace.rc:root/init.trace.rc \
#    device/pantech/ef49k/ramdisk/init.usb.rc:root/init.usb.rc \
#    device/pantech/ef49k/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
#    device/pantech/ef49k/ramdisk/init.qcom.usb.sh:root/init.qcom.usb.sh \
#    device/pantech/ef49k/ramdisk/init.pantech.usb.rc:root/init.pantech.usb.rc \
#    device/pantech/ef49k/ramdisk/init.pantech.usb.sh:root/init.pantech.usb.sh \
#    device/pantech/ef49k/ramdisk/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
#    device/pantech/ef49k/ramdisk/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
#    device/pantech/ef49k/ramdisk/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
#    device/pantech/ef49k/ramdisk/init.qcom.ril.sh:root/init.qcom.ril.sh \
#    device/pantech/ef49k/ramdisk/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
#    device/pantech/ef49k/ramdisk/initlogo.rle:root/initlogo.rle \
#    device/pantech/ef49k/ramdisk/poweroff_in.rle:root/poweroff_in.rle \
#    device/pantech/ef49k/ramdisk/ueventd.rc:root/ueventd.rc

PRODUCT_COPY_FILES += \
    device/pantech/ef49k/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc \
    device/pantech/ef49k/ramdisk/ueventd.goldfish.rc:root/ueventd.goldfish.rc \
    device/pantech/ef49k/ramdisk/fstab.qcom:root/fstab.qcom \


# Camera firmware
#PRODUCT_COPY_FILES += \
#    device/pantech/ef49k/camera/CE150F00.bin:root/CE150F00.bin \
#    device/pantech/ef49k/camera/CE150F01.bin:root/CE150F01.bin \
#    device/pantech/ef49k/camera/CE150F02_81.bin:root/CE150F02_81.bin \
#    device/pantech/ef49k/camera/CE150F03_81.bin:root/CE150F03_81.bin

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise
# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += zh_CN xhdpi

# call the proprietary setup
$(call inherit-product-if-exists, vendor/pantech/ef49k/ef49k-vendor.mk)
