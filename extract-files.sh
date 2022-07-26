#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export DEVICE=gomyhomv9
export DEVICE_COMMON=gx-common
export VENDOR_COMMON=amlogic
export VENDOR_DEVICE=amlogic
export TARGET_SOC=gxm

"./../../${VENDOR_COMMON}/${DEVICE_COMMON}/extract-files.sh" "$@"
