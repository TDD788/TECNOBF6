#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH=device/tecno/TECNO-BF6

# Inherit from those products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device configuration
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Fox settings
$(call inherit-product-if-exists, $(DEVICE_PATH)/fox_$(PRODUCT_DEVICE).mk)

# Inherit from TWRP common configuration
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_DEVICE := TECNO-BF6
PRODUCT_NAME := twrp_TECNO-BF6
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO BF6
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="BF6-user 12 SP1A.210812.001 280 release-keys"

BUILD_FINGERPRINT := TECNO/BF6-OP/TECNO-BF6:12/SP1A.210812.001/230111V280:user/release-keys
