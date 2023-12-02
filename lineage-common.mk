#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/zuma/overlay-lineage

# Camera
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.camera.extensions.package=com.google.android.apps.camera.services \
    ro.vendor.camera.extensions.service=com.google.android.apps.camera.services.extensions.service.PixelExtensions

# EUICC
ifneq ($(BOARD_WITHOUT_RADIO),true)
# product permissions XML from stock
PRODUCT_COPY_FILES += \
    device/google/zuma/product-permissions-stock.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/product-permissions-stock.xml
endif

# Lineage Health
include hardware/google/pixel/lineage_health/device.mk

# Touch
include hardware/google/pixel/touch/device.mk
