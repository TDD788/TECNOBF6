#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/tecno/TECNO-BF6
# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service

PRODUCT_PACKAGES += \
    bootctrl.sp9863a

PRODUCT_STATIC_BOOT_CONTROL_HAL := \
    bootctrl.sp9863a \
    libgptutils \
    libz \
    libcutils

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload
    
# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# Props
PRODUCT_PROPERTY_OVERRIDES +=\
	ro.fastbootd.available=true
	ro.boot.dynamic_partitions=true 
	
# TWRP Fastbootd
TW_INCLUDE_FASTBOOTD := true

# Apex Libraries
PRODUCT_HOST_PACKAGES += \
    libandroidicu

# TWRP
TW_INCLUDE_PYTHON := true
TW_EXCLUDE_APEX := true