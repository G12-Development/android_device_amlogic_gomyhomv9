#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

include vendor/amlogic/gomyhomv9/BoardConfigVendor.mk

DEVICE_PATH := device/amlogic/gomyhomv9

## Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include
BOARD_CUSTOM_BT_CONFIG := $(DEVICE_PATH)/bluetooth/vnd_amlogic_lpm.txt
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

## Bootloader
TARGET_BOOTLOADER_BOARD_NAME := gomyhomv9

## DTB
TARGET_DTB_NAME := gomyhomv9

# GPU
TARGET_AMLOGIC_GPU_ARCH := midgard

# Partitions
BOARD_PRODUCTIMAGE_PARTITION_SIZE := 134217728
TARGET_COPY_OUT_PRODUCT := product
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4

## Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# SOC
TARGET_AMLOGIC_SOC := gxm
TARGET_BOARD_PLATFORM := gxm

## Wi-Fi
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
WIFI_DRIVER_FW_PATH_AP := "/vendor/etc/wifi/6255/fw_bcm43455c0_ag.bin"
WIFI_DRIVER_FW_PATH_STA := "vendor/etc/wifi/6255/fw_bcm43455c0_ag_apsta.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/dhd/parameters/firmware_path"
WPA_SUPPLICANT_VERSION := VER_0_8_X
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true

## Include the common tree BoardConfig makefile
include device/amlogic/gx-common/BoardConfigCommon.mk