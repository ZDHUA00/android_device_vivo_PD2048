#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#
# Minimal LineageOS 20 product for PD2048: same device tree, far fewer
# packages, so it fits the GitHub-hosted runner's disk/time budget.

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/vivo/PD2048/device.mk)

$(call inherit-product, vendor/lineage/config/common_mini_phone.mk)

PRODUCT_DEVICE := PD2048
PRODUCT_NAME := lineage_PD2048_mini
PRODUCT_BRAND := vivo
PRODUCT_MODEL := V2048A
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sys_mssi_64_cn_armv82-user 13 TP1A.220624.014 eng.compil.20250829.200753 release-keys" \
    BuildFingerprint=vivo/PD2048/PD2048:13/TP1A.220624.014/compiler08292002:user/release-keys

# WebView prebuilt lives in Git LFS, not available in this source snapshot.
PRODUCT_PACKAGES := $(filter-out webview,$(PRODUCT_PACKAGES))
