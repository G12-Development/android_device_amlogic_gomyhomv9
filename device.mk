#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/amlogic/gomyhomv9

$(call inherit-product, vendor/amlogic/gomyhomv9/gomyhomv9-vendor.mk)

## Factory
PRODUCT_HOST_PACKAGES += \
    aml_image_packer

## Bluetooth
BOARD_HAVE_BLUETOOTH := true
PRODUCT_PACKAGES += \
    libbt-vendor

## Init-Files
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/init-files/init.amlogic.wifi_buildin.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.amlogic.wifi_buildin.rc

## Kernel Modules
PRODUCT_PACKAGES += \
    qca9377

## Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay

$(call inherit-product, device/amlogic/gx-common/gx.mk)
