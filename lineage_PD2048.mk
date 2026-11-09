#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from PD2048 device
$(call inherit-product, device/vivo/PD2048/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_DEVICE := PD2048
PRODUCT_NAME := lineage_PD2048
PRODUCT_BRAND := vivo
PRODUCT_MODEL := V2048A
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sys_mssi_64_cn_armv82-user 13 TP1A.220624.014 eng.compil.20250829.200753 release-keys" \
    BuildFingerprint=vivo/PD2048/PD2048:13/TP1A.220624.014/compiler08292002:user/release-keys

# WebView prebuilt lives in Git LFS, which is not available in this source
# snapshot. Drop it so the system image can be built; apps fall back to no
# WebView until the prebuilt is provided.
PRODUCT_PACKAGES := $(filter-out webview,$(PRODUCT_PACKAGES))
