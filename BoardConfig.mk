#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

BOARD_VENDOR := xiaomi
DEVICE_PATH := device/xiaomi/gauguin

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

TARGET_USES_64_BIT_BINDER := true

# Audio
AUDIO_FEATURE_ENABLED_AAC_ADTS_OFFLOAD := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
AUDIO_FEATURE_ENABLED_HDMI_SPK := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := lito
TARGET_NO_BOOTLOADER := true

# Camera
TARGET_USES_QTI_CAMERA_DEVICE := true

# Charger Mode
BOARD_CHARGER_ENABLE_SUSPEND := true

# Display
TARGET_USES_HWC2 := true

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# Kernel
BOARD_BOOT_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom androidboot.console=ttyMSM0 androidboot.memcg=1 lpm_levels.sleep_disabled=1 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 service_locator.enable=1 androidboot.usbcontroller=a600000.dwc3 swiotlb=2048 loop.max_part=7 cgroup.memory=nokmem,nosocket reboot=panic_warm
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE += androidboot.init_fatal_reboot_target=recovery
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
NEED_KERNEL_MODULE_SYSTEM := true
TARGET_KERNEL_ADDITIONAL_FLAGS := DTC_EXT=$(shell pwd)/prebuilts/misc/linux-x86/dtc/dtc
TARGET_KERNEL_ARCH := arm64
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 134217728
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 402653184
BOARD_DTBOIMG_PARTITION_SIZE := 33554432
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_PARTITION_SIZE := 2415919104
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := system product
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 9122611200
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 134217728
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs

TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product
BOARD_USES_PRODUCTIMAGE := true
BUILD_WITHOUT_VENDOR := true

# Platform
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := lito

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# Telephony
TARGET_PROVIDES_QTI_TELEPHONY_JAR := true

# Treble
BOARD_VNDK_VERSION := current

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --set_hashtree_disabled_flag
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 2

# Inherit from the proprietary version
-include vendor/xiaomi/gauguin/BoardConfigVendor.mk
